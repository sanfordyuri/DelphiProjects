unit RelFolhaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Conexao, RelFolha;

type
  TRelFolhasForm = class(TForm)
    Label4: TLabel;
    EdtMesAno: TMaskEdit;
    lblCargo: TLabel;
    btnVisualizar: TButton;
    btnCancelar: TButton;
    QueryCargos: TFDQuery;
    QueryCargosCODIGO: TIntegerField;
    QueryCargosNOME: TStringField;
    DtsCargos: TDataSource;
    lkpCargos: TDBLookupComboBox;
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelFolhasForm: TRelFolhasForm;
  RelFolhaCfg: TRelFolhaCfg;

implementation

{$R *.dfm}

procedure TRelFolhasForm.btnVisualizarClick(Sender: TObject);
var
  Data: String;
begin
  RelFolhaCfg := TRelFolhaCfg.Create(Self);
  if ((EdtMesAno.Text = '  /    ') or (EdtMesAno.Text = ' ')) then
    begin
       ShowMessage('Insira uma data de referência.');
       Exit;
    end;
  Data := EdtMesAno.Text;

  if not (VarToStr(lkpCargos.KeyValue) = '') then
    begin
      RelFolhaCfg.configurarCampos(EdtMesAno.Text, StrToInt(VarToStr(lkpCargos.KeyValue)));
    end
  else
      RelFolhaCfg.configurarCampos(EdtMesAno.Text);
  RelFolhaCfg.rllblReferencia.Caption := Data;
  if not RelFolhaCfg.QryFolha.IsEmpty then
    begin
      RelFolhaCfg.RlFolha.PreviewModal;
    end
  else
    ShowMessage('Sem informações para o relatório.');


  RelfolhaCfg.Free;

end;

procedure TRelFolhasForm.FormCreate(Sender: TObject);
begin
  QueryCargos.Open;
end;

procedure TRelFolhasForm.FormDestroy(Sender: TObject);
begin
  QueryCargos.Close;
end;

end.
