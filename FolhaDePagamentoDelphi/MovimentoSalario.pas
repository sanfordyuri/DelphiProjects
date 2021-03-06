unit MovimentoSalario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, System.UITypes, Vcl.ComCtrls;

type
  TMovimentoSalarios = class(TForm)
    Label2: TLabel;
    lblCargo: TLabel;
    lblFuncionario: TLabel;
    Label1: TLabel;
    PgControl: TPageControl;
    Processos: TTabSheet;
    Lan?ar: TTabSheet;
    LkpCargo: TDBLookupComboBox;
    LkpFuncionario: TDBLookupComboBox;
    EdtPercentual: TEdit;
    EdtDataRef: TMaskEdit;
    MovimentoSalarioAdicionarBtn: TButton;
    DtsCargos: TDataSource;
    QueryCargos: TFDQuery;
    QueryFuncionarios: TFDQuery;
    DtsFuncionarios: TDataSource;
    QueryAuxiliar: TFDQuery;
    QueryFuncionariosSelecionados: TFDQuery;
    GridProcessos: TDBGrid;
    EdtPeriodo: TMaskEdit;
    lblPeriodo: TLabel;
    BtnBuscar: TButton;
    BtnRemover: TButton;
    BtnAdicionar: TButton;
    QueryAxlSal: TFDQuery;
    DtsAxlSal: TDataSource;
    lblCargom: TLabel;
    lblFun: TLabel;
    lblPer: TLabel;
    lblDataRef: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MovimentoSalarioAdicionarBtnClick(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure QueryAxlSalAfterOpen(DataSet: TDataSet);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
  private
    procedure PuxaProcessos(DataRef: String);
    procedure LimparCamposLancamento;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  data: TDateTime;
  MovimentoSalarios: TMovimentoSalarios;

implementation

{$R *.dfm}

procedure TMovimentoSalarios.BtnAdicionarClick(Sender: TObject);
begin
  PgControl.ActivePage := Lan?ar;
end;

procedure TMovimentoSalarios.BtnBuscarClick(Sender: TObject);
begin

  if not (EdtDataRef.Text = '') then
  begin
    PuxaProcessos(EdtPeriodo.Text);
  end
  Else
  begin
    ShowMessage('A data de refer?ncia ? obrigat?ria.');
  end;



end;

procedure TMovimentoSalarios.PuxaProcessos(DataRef: String);
begin
  QueryAxlSal.SQL.Text := 'SELECT F.CODIGO AS COD, F.NOME AS FUNCIONARIO, TC.NOME AS CARGO, FS.SALARIO, FS.DATA ' + 'FROM TB_FUNCIONARIO F ' + 'INNER JOIN TB_SALARIOS FS ON(FS.FUNCIONARIO = F.CODIGO) INNER JOIN TB_CARGO TC ON(F.CARGO = TC.CODIGO)' + 'WHERE F.STATUS = 1 ' + 'AND FS.DATA = :DATA';
  Data := StrToDateTime(DataRef);
  QueryAxlSal.ParamByName('DATA').AsDate := Data;
  QueryAxlSal.Open;
  DtsAxlSal.DataSet.Refresh;
end;

procedure TMovimentoSalarios.LimparCamposLancamento;
begin
  LkpCargo.KeyValue := Null;
  LkpFuncionario.KeyValue := Null;
  EdtPercentual.Text := '';
  EdtDataRef.Text := '';
end;

procedure TMovimentoSalarios.QueryAxlSalAfterOpen(DataSet: TDataSet);
begin
  GridProcessos.Columns.Items[0].Width := 30;
  GridProcessos.Columns.Items[1].Width := 150;
  GridProcessos.Columns.Items[2].Width := 150;
end;

procedure TMovimentoSalarios.BtnRemoverClick(Sender: TObject);
var
  Cod: Integer;
  Salario: double;
begin

  Cod := GridProcessos.SelectedField.DataSet.FieldByName('COD').Value;
  Salario := GridProcessos.SelectedField.DataSet.FieldByName('SALARIO').Value;

  QueryAxlSal.SQL.Text := 'DELETE FROM TB_SALARIOS WHERE FUNCIONARIO = :COD AND SALARIO = :SAL';
  QueryAxlSal.ParamByName('COD').AsInteger := Cod;
  QueryAxlSal.ParamByName('SAL').AsFloat := Salario;

  QueryAxlSal.ExecSQL;

  PuxaProcessos(EdtPeriodo.Text);


end;

procedure TMovimentoSalarios.FormCreate(Sender: TObject);

begin
  QueryCargos.Open;
  QueryFuncionarios.Open;
  EdtPeriodo.Text := DateTimeToStr(Trunc(Now));
  PuxaProcessos(EdtPeriodo.Text);
  PgControl.ActivePage := Processos;
end;

procedure TMovimentoSalarios.FormDestroy(Sender: TObject);
begin
  QueryCargos.Close;
  QueryFuncionarios.Close;
end;


procedure TMovimentoSalarios.MovimentoSalarioAdicionarBtnClick(Sender: TObject);
var
  Data: TDateTime;
begin

    if EdtPercentual.Text = '' then
      begin
        ShowMessage('O Percentual ? obrigat?rio.');
        Exit;
      end;

    if EdtDataRef.Text = '' then
      begin
        ShowMessage('A data de refer?ncia ? obrigat?ria.');
        Exit;
      end;


    case MessageDlg('Confirme que deseja adicionar um novo registro de sal?rio.', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbOK, TMsgDlgBtn.mbCancel], 0) of
    mrOk:
      begin

        Data := StrToDate(EdtDataRef.Text);

        QueryFuncionariosSelecionados.Close;

        QueryFuncionariosSelecionados.SQL.Text := 'SELECT F.CODIGO, FS.SALARIO '+
          'FROM TB_FUNCIONARIO F '+
          'INNER JOIN TB_SALARIOS FS ON(FS.FUNCIONARIO = F.CODIGO) '+
          'WHERE F.STATUS = 1 '+
          'AND FS.DATA = (SELECT MAX(FS2.DATA) FROM TB_SALARIOS FS2 WHERE FS2.FUNCIONARIO = F.CODIGO) ';


        if (VarToStr(LkpCargo.KeyValue) <> '') then
          begin
            QueryFuncionariosSelecionados.SQL.Text := QueryFuncionariosSelecionados.SQL.Text + ' AND F.CARGO = ' + VarToStr(LkpCargo.KeyValue);
            LkpFuncionario.KeyValue := null;
          end
        else if VarToStr(LkpFuncionario.KeyValue) <> '' then
          QueryFuncionariosSelecionados.SQL.Text := QueryFuncionariosSelecionados.SQL.Text + ' AND F.CODIGO = ' + VarToStr(LkpFuncionario.KeyValue);


        QueryFuncionariosSelecionados.Open;

        while not QueryFuncionariosSelecionados.Eof do
        begin
          QueryAuxiliar.SQL.Text := 'INSERT INTO TB_SALARIOS(DATA, FUNCIONARIO, SALARIO) '+
                             'VALUES (:DATA_HORA, :COD_FUNCIONARIO, :SALARIO)';
          QueryAuxiliar.ParamByName('DATA_HORA').AsDateTime := Data;
          QueryAuxiliar.ParamByName('COD_FUNCIONARIO').AsInteger := QueryFuncionariosSelecionados.FieldByName('CODIGO').AsInteger;
          QueryAuxiliar.ParamByName('SALARIO').AsFloat := QueryFuncionariosSelecionados.FieldByName('SALARIO').AsFloat * (1 + (StrToFloat(EdtPercentual.Text) / 100));
          QueryAuxiliar.ExecSQL;

          QueryFuncionariosSelecionados.Next;
        end;

        if QueryFuncionariosSelecionados.IsEmpty then
          ShowMessage('Nenhuma informa??o processada.')
        else
          begin
            LimparCamposLancamento;
            ShowMessage('Sal?rios processados.');
            PgControl.ActivePage := Processos;
          end
        end;
          mrCancel:
            begin
              ShowMessage('Opera??o cancelada.')
            end
        end;


end;
end.
