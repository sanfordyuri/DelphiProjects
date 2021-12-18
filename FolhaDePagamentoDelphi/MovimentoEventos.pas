unit MovimentoEventos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Conexao,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TMovimentoEvento = class(TForm)
    lblMesAno: TLabel;
    lblCargo: TLabel;
    lblFuncionario: TLabel;
    lblEventos: TLabel;
    lblValor: TLabel;
    QueryCargos: TFDQuery;
    QueryFuncionarios: TFDQuery;
    QueryEventos: TFDQuery;
    DtsCargos: TDataSource;
    DtsFuncionarios: TDataSource;
    DtsEventos: TDataSource;
    QryFuncionariosSelecionados: TFDQuery;
    QryAux: TFDQuery;
    PageControl1: TPageControl;
    Eventos: TTabSheet;
    Lançar: TTabSheet;
    Button1: TButton;
    EdtMesAno: TMaskEdit;
    EdtValor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LkpCargo: TDBLookupComboBox;
    LkpEvento: TDBLookupComboBox;
    LkpFuncionario: TDBLookupComboBox;
    Button2: TButton;
    lblPeriodo: TLabel;
    BtnBuscar: TButton;
    GridEventos: TDBGrid;
    BtnAdiciona: TButton;
    BtnRemover: TButton;
    EdtMesAnoRef: TMaskEdit;
    QueryAxlEven: TFDQuery;
    DtsAxlEven: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure QueryAxlEvenAfterOpen(DataSet: TDataSet);
    procedure BtnAdicionaClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
  private
    procedure BuscaEventosPorData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MovimentoEvento: TMovimentoEvento;

implementation

{$R *.dfm}

procedure TMovimentoEvento.BtnBuscarClick(Sender: TObject);
begin
  BuscaEventosPorData;
end;

procedure TMovimentoEvento.BtnAdicionaClick(Sender: TObject);
begin
  PageControl1.ActivePage := Lançar;
end;

procedure TMovimentoEvento.BtnRemoverClick(Sender: TObject);
var
  CE: Integer;
  CF: Integer;
  MA: String;
begin
  CE := GridEventos.SelectedField.DataSet.FieldByName('COD_EVENTO').Value;
  CF := GridEventos.SelectedField.DataSet.FieldByName('COD_FUNCIONARIO').Value;
  MA := GridEventos.SelectedField.DataSet.FieldByName('MES_ANO').Value;

  QueryAxlEven.SQL.Text := 'DELETE FROM TB_FOLHA_EVENTOS WHERE COD_EVENTO = :CE AND COD_FUNCIONARIO = :CF AND MES_ANO = :MA';
  QueryAxlEven.ParamByName('CE').AsInteger := CE;
  QueryAxlEven.ParamByName('CF').AsInteger := CF;
  QueryAxlEven.ParamByName('MA').AsString := MA;

  QueryAxlEven.ExecSQL;

  BuscaEventosPorData;
end;

procedure TMovimentoEvento.btnSalvarClick(Sender: TObject);
var
  mesAno: TDate;
begin
  MesAno := StrToDateDef('01/'+ EdtMesAno.Text, 0);
  if (EdtMesAno.Text = '') then
  begin
    ShowMessage('Informe o mês/Ano');
    EdtMesAno.SetFocus;
    Exit;
  end;
  if VarToStr(LkpEvento.KeyValue) = '' then
  begin
    ShowMessage('Informe o Evento');
    LkpEvento.SetFocus;
    Exit;
  end;
  if (EdtValor.Text = '') then
  begin
    ShowMessage('Informe o Valor');
    EdtValor.SetFocus;
    Exit;
  end;
  if not (StrToFloat(EdtValor.Text) > 0) then
  begin
    ShowMessage('Informe um Valor válido');
    EdtValor.SetFocus;
    Exit;
  end;

  QryFuncionariosSelecionados.Close;
  QryFuncionariosSelecionados.SQL.Text :=
    'SELECT CODIGO, NOME FROM TB_FUNCIONARIO WHERE STATUS = 1 ';
  if VarToStr(LkpCargo.KeyValue) <> '' then
  begin
    QryFuncionariosSelecionados.SQL.Text := QryFuncionariosSelecionados.SQL.Text +
      ' AND CARGO = '+ VarToStr(LkpCargo.KeyValue);
  end
  else if VarToStr(LkpFuncionario.KeyValue) <> '' then
  begin
    QryFuncionariosSelecionados.SQL.Text := QryFuncionariosSelecionados.SQL.Text +
      ' AND CODIGO = '+ VarToStr(LkpFuncionario.KeyValue);
  end;
  QryFuncionariosSelecionados.Open;

  while not QryFuncionariosSelecionados.Eof do
  begin
    QryAux.SQL.Text := 'INSERT INTO TB_FOLHA_EVENTOS '+
                       'VALUES(:MES_ANO, :COD_EVENTO, :COD_FUNCIONARIO, :VALOR)';
    QryAux.ParamByName('MES_ANO').AsString := EdtMesAno.Text;
    QryAux.ParamByName('COD_EVENTO').AsInteger := LkpEvento.KeyValue;
    QryAux.ParamByName('COD_FUNCIONARIO').AsInteger := QryFuncionariosSelecionados.FieldByName('CODIGO').AsInteger;
    QryAux.ParamByName('VALOR').AsFloat := StrToFloat(EdtValor.Text);
    QryAux.ExecSQL;

    QryFuncionariosSelecionados.Next;
  end;

  if not QryFuncionariosSelecionados.IsEmpty then
    ShowMessage('Eventos processados.');

end;

procedure TMovimentoEvento.FormCreate(Sender: TObject);
begin
  QueryCargos.Open;
  QueryFuncionarios.Open;
  QueryEventos.Open;
  EdtMesAnoRef.Text := FormatDateTime('MM/YYYY', Now);
  BuscaEventosPorData;

end;

procedure TMovimentoEvento.QueryAxlEvenAfterOpen(DataSet: TDataSet);
begin
  GridEventos.Columns.Items[0].Width := 250;
  GridEventos.Columns.Items[1].Width := 150;
  GridEventos.Columns.Items[2].Width := 100;
  GridEventos.Columns.Items[4].Visible := False;
  GridEventos.Columns.Items[5].Visible := False;
  GridEventos.Columns.Items[6].Visible := False;
end;

procedure TMovimentoEvento.BuscaEventosPorData;
begin
  QueryAxlEven.SQL.Text := 'SELECT F.NOME, tc.NOME as CARGO, E.DESCRICAO, fo.VALOR, fo.COD_FUNCIONARIO, fo.COD_EVENTO, fo.MES_ANO'
  + ' FROM TB_FOLHA_EVENTOS fo'
  + ' INNER JOIN TB_FUNCIONARIO F ON F.CODIGO = fo.COD_FUNCIONARIO INNER JOIN TB_EVENTOS E ON E.CODIGO = fo.COD_EVENTO'
  + ' INNER JOIN TB_CARGO tc ON tc.CODIGO = F.CARGO'
  + ' WHERE MES_ANO = :MESANO AND F.STATUS = 1';
  QueryAxlEven.ParamByName('MESANO').AsString := EdtMesAnoRef.Text;
  QueryAxlEven.Open;
end;

end.
