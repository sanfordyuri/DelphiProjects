unit RelFunForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RelFuncionarios;

type
  TRelFunForms = class(TForm)
    btnVisualizar: TButton;
    DtsCargos: TDataSource;
    QueryCargos: TFDQuery;
    QueryCargosCODIGO: TIntegerField;
    QueryCargosNOME: TStringField;
    lblCargo: TLabel;
    btnCancelar: TButton;
    lkpCargoRelfun: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelFunForms: TRelFunForms;
  RelFunCfg: TRelFunCfg;

implementation

{$R *.dfm}

procedure TRelFunForms.btnVisualizarClick(Sender: TObject);
begin
  RelFunCfg := TRelFunCfg.Create(Self);
  if not (VarToStr(lkpCargoRelfun.KeyValue) = '') then
    begin
      RelFunCfg.configurarCampos(StrToInt(VarToStr(lkpCargoRelfun.KeyValue)))
    end;
  if not RelFunCfg.QryLista.IsEmpty then
    RelFunCfg.RLReport1.PreviewModal
  else
    ShowMessage('Sem informações para o relatório.');
  RelFunCfg.Free;
end;

procedure TRelFunForms.FormCreate(Sender: TObject);
begin
  QueryCargos.Open;
end;

procedure TRelFunForms.FormDestroy(Sender: TObject);
begin
  QueryCargos.Close;
end;

end.
