unit MovimentoFolha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Conexao;

type
  TMovFolhaDePagamento = class(TForm)
    EdtMesAno: TMaskEdit;
    LblMesAno: TLabel;
    BtnProcessar: TButton;
    Log: TMemo;
    QryFolha: TFDQuery;
    QryFuncionarios: TFDQuery;
    QryFolhaMES_ANO: TStringField;
    QryFolhaCOD_FUNCIONARIO: TIntegerField;
    QryFolhaDESCONTO_INSS: TFloatField;
    QryFolhaDESCONTO_IRRF: TFloatField;
    QryFolhaSALDO_EVENTOS: TFloatField;
    QryFolhaSALARIO_BRUTO: TFloatField;
    QryFolhaSALARIO_LIQUIDO: TFloatField;
    procedure BtnProcessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure processarFolha;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFolhaDePagamento: TMovFolhaDePagamento;
  DMC: TDM;

implementation

uses
  CalcInss,
  CalcIrrf;

{$R *.dfm}

procedure TMovFolhaDePagamento.BtnProcessarClick(Sender: TObject);
begin

  if (EdtMesAno.Text = '  /    ') or (EdtMesAno.Text = ' ') then
    begin
      ShowMessage('Insira uma data V?lida.');
      Exit;
    end;
  case MessageDlg('Confirme que deseja processar a Folha. [' + EdtMesAno.Text + ']', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbOK, TMsgDlgBtn.mbCancel], 0) of
  mrOk:
  begin
     processarFolha
  end;
  end

  end;

  procedure TMovFolhaDePagamento.FormCreate(Sender: TObject);
  begin
    DMC := TDM.Create(Self);
  end;

  procedure TMovFolhaDePagamento.FormDestroy(Sender: TObject);
  begin
    DMC.Free;
  end;

procedure TMovFolhaDePagamento.processarFolha;
var
  MesAno: string;
begin
  MesAno := EdtMesAno.Text;
  Log.Clear;
  QryFolha.Close;
  QryFolha.SQL.Text := 'SELECT * FROM FOLHAS WHERE MES_ANO = :MES_ANO';
  QryFolha.ParamByName('MES_ANO').AsString := MesAno;
  QryFolha.Open;
  QryFuncionarios.Close;
  QryFuncionarios.SQL.Text := 'SELECT F.CODIGO, F.NOME, FS.SALARIO,' + '       (SELECT SUM(FE.VALOR) FROM TB_FOLHA_EVENTOS FE' + '        INNER JOIN TB_EVENTOS E ON(E.CODIGO = FE.COD_EVENTO AND E.TIPO = 0)' + '        WHERE FE.COD_FUNCIONARIO = F.CODIGO' + '        AND FE.MES_ANO = :MES_ANO) AS DESCONTOS,' + '       (SELECT SUM(FE.VALOR) FROM TB_FOLHA_EVENTOS FE' + '        INNER JOIN TB_EVENTOS E ON(E.CODIGO = FE.COD_EVENTO AND E.TIPO = 1)' + '        WHERE FE.COD_FUNCIONARIO = F.CODIGO' + '        AND FE.MES_ANO = :MES_ANO) AS ACRESCIMOS' + ' FROM TB_FUNCIONARIO F' + ' INNER JOIN TB_SALARIOS FS ON(FS.FUNCIONARIO = F.CODIGO)' + ' WHERE F.STATUS  = 1' + ' AND FS.DATA = (SELECT MAX(FS2.DATA) FROM TB_SALARIOS FS2 WHERE FS2.FUNCIONARIO = F.CODIGO)';
  QryFuncionarios.ParamByName('MES_ANO').AsString := MesAno;
  QryFuncionarios.Open;
  DMC.Connection.StartTransaction;
  try
    while not QryFuncionarios.Eof do
    begin
      if QryFolha.Locate('MES_ANO;COD_FUNCIONARIO', VarArrayOf([MesAno, QryFuncionarios.FieldByName('CODIGO').AsString]), [loCaseInsensitive]) then
        QryFolha.Edit
      else
      begin
        QryFolha.Append;
        QryFolhaMES_ANO.AsString := MesAno;
        QryFolhaCOD_FUNCIONARIO.AsString := QryFuncionarios.FieldByName('CODIGO').AsString;
      end;
      QryFolhaDESCONTO_INSS.AsFloat := TInss.Calc(QryFuncionarios.FieldByName('SALARIO').AsFloat);
      QryFolhaDESCONTO_IRRF.AsFloat := TIrrf.Calc(QryFuncionarios.FieldByName('SALARIO').AsFloat);
      QryFolhaSALDO_EVENTOS.AsFloat := QryFuncionarios.FieldByName('ACRESCIMOS').AsFloat - QryFuncionarios.FieldByName('DESCONTOS').AsFloat;
      QryFolhaSALARIO_BRUTO.AsFloat := QryFuncionarios.FieldByName('SALARIO').AsFloat;
      QryFolhaSALARIO_LIQUIDO.AsFloat := QryFolhaSALARIO_BRUTO.AsFloat - QryFolhaDESCONTO_INSS.AsFloat - QryFolhaDESCONTO_IRRF.AsFloat + QryFolhaSALDO_EVENTOS.AsFloat;
      QryFolha.Post;
      Log.Lines.Add(QryFuncionarios.FieldByName('NOME').AsString + ' processado.');
      QryFuncionarios.Next;
    end;
    DMC.Connection.Commit;
  except
    DMC.Connection.Rollback;
    Log.Lines.Add('Nenhuma altera??o executada.');
  end;
end;

  end.
