unit RelFolha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao;

type
  TRelFolhaCfg = class(TForm)
    RlFolha: TRLReport;
    RLBand1: TRLBand;
    rllblTitulo: TRLLabel;
    rllblPeriodo: TRLLabel;
    rllblNome: TRLLabel;
    rllblDescontoInss: TRLLabel;
    rlblDescontoirrf: TRLLabel;
    rllblSaldoEvento: TRLLabel;
    rllblSalarioBruto: TRLLabel;
    rlblSalarioLiquido: TRLLabel;
    RLBand2: TRLBand;
    rldbFuncionario: TRLDBText;
    rldbDescontoInss: TRLDBText;
    rldbDescontoIrrf: TRLDBText;
    rldbSaldoEventos: TRLDBText;
    rldbSalarioBruto: TRLDBText;
    rldbSalarioLiquido: TRLDBText;
    DtsFolha: TDataSource;
    QryFolha: TFDQuery;
    rllblRes: TRLLabel;
    rllblReferencia: TRLLabel;
    procedure ConfigurarCampos(Data: String; Cargo: Integer = 0);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelFolhaCfg: TRelFolhaCfg;

implementation

{$R *.dfm}

procedure TRelFolhaCfg.ConfigurarCampos(Data: String; Cargo: Integer = 0);
var
  cod: Integer;
  MesAno: String;
begin
  MesAno := Data;
  cod := Cargo;
  QryFolha.Close;
  QryFolha.SQL.Text := 'SELECT tf.NOME, f.DESCONTO_INSS, f.DESCONTO_IRRF, f.SALDO_EVENTOS, f.SALARIO_BRUTO, f.SALARIO_LIQUIDO ' +
  'FROM FOLHAS f ' +
  'INNER JOIN TB_FUNCIONARIO tf ON (tf.CODIGO = f.COD_FUNCIONARIO) ' +
  'WHERE tf.STATUS = 1 AND f.MES_ANO = :MESANO';
  if cod > 0 then
  begin
    QryFolha.SQL.Text := QryFolha.SQL.Text + ' AND tf.CARGO = :CARGO';
    QryFolha.ParamByName('CARGO').AsInteger := cod;
  end;
  QryFolha.ParamByName('MESANO').AsString := MesAno;
  QryFolha.Open;
end;


procedure TRelFolhaCfg.FormCreate(Sender: TObject);
begin
  QryFolha.Open;
end;

procedure TRelFolhaCfg.FormDestroy(Sender: TObject);
begin
  QryFolha.Close;
end;

end.
