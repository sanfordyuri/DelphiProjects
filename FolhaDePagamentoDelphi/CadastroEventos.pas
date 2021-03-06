unit CadastroEventos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Conexao, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TTCadastroEvento = class(TForm)
    PageControl1: TPageControl;
    Eventos: TTabSheet;
    Registro: TTabSheet;
    DBGrid1: TDBGrid;
    addEventoBtn: TButton;
    removeEventobtn: TButton;
    EventoSalvarBtn: TButton;
    QueryEventos: TFDQuery;
    DtsEventos: TDataSource;
    QueryEventosCODIGO: TIntegerField;
    QueryEventosDESCRICAO: TStringField;
    QueryEventosTIPO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    salvarEventoRegisBtn: TButton;
    cancelarEventoRegisBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure addEventoBtnClick(Sender: TObject);
    procedure salvarEventoRegisBtnClick(Sender: TObject);
    procedure cancelarEventoRegisBtnClick(Sender: TObject);
    procedure removeEventobtnClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EventoSalvarBtnClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure AtualizarCodigo(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TCadastroEvento: TTCadastroEvento;
  CodigoFun: Integer;

implementation

{$R *.dfm}

procedure TTCadastroEvento.addEventoBtnClick(Sender: TObject);
begin
  QueryEventos.Append;
  PageControl1.ActivePage := Registro;
  AtualizarCodigo(Self);
end;

procedure TTCadastroEvento.AtualizarCodigo(Sender: TObject);
begin
  if QueryEventos.RowsAffected = 0 then
    begin
      QueryEventos.Append;
      CodigoFun := 1;
      DBEdit1.Text := IntToStr(CodigoFun);
      Exit;
    end;
  if not QueryEventos.IsEmpty then
    begin
      QueryEventos.Last;
      CodigoFun :=  QueryEventos.FieldByName('CODIGO').Value + 1;
      QueryEventos.Append;
      DBEdit1.Text := IntToStr(CodigoFun);
    end;

end;

procedure TTCadastroEvento.cancelarEventoRegisBtnClick(Sender: TObject);
begin
  if QueryEventos.State in [dsInsert, dsEdit] then
    begin
      QueryEventos.Cancel;
      PageControl1.ActivePage := Eventos;
    end;
end;


procedure TTCadastroEvento.DBGrid1DblClick(Sender: TObject);
begin
    if not QueryEventos.IsEmpty then
    begin
      //QueryEventos.Edit;
    end;
end;

procedure TTCadastroEvento.EventoSalvarBtnClick(Sender: TObject);
begin
  if QueryEventos.State in [dsInsert, dsEdit] then
    begin
      QueryEventos.Post;
      PageControl1.ActivePage := Eventos;
    end;
end;

procedure TTCadastroEvento.FormCreate(Sender: TObject);
begin
  QueryEventos.Open;
  PageControl1.ActivePage := Eventos;
end;

procedure TTCadastroEvento.FormDestroy(Sender: TObject);
begin
  QueryEventos.Close;
end;

procedure TTCadastroEvento.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePage = Eventos) and (QueryEventos.State in [dsInsert, dsEdit]) then
    begin
        QueryEventos.Cancel;
    end;
end;

procedure TTCadastroEvento.removeEventobtnClick(Sender: TObject);
begin
  if not QueryEventos.IsEmpty then
    begin
      QueryEventos.Delete;
    end;
end;

procedure TTCadastroEvento.salvarEventoRegisBtnClick(Sender: TObject);
begin
  if QueryEventos.State in [dsInsert, dsEdit] then
    begin
      QueryEventos.Post;
      PageControl1.ActivePage := Eventos;
    end;
end;

end.
