unit CadastroCargos2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TCadastroCargos = class(TForm)
    QueryCargos: TFDQuery;
    DtsCargos: TDataSource;
    QueryCargosCODIGO: TIntegerField;
    QueryCargosNOME: TStringField;
    PgControl: TPageControl;
    Cargos: TTabSheet;
    Registro: TTabSheet;
    GridCargos: TDBGrid;
    lblCodigo: TLabel;
    edtCodigo: TDBEdit;
    lblNome: TLabel;
    edtNome: TDBEdit;
    btnSalvarRegistro: TButton;
    btnAddCargo: TButton;
    btnRemoverCargo: TButton;
    btnSalvarCargo: TButton;
    btnCancelarRegistro: TButton;
    procedure adicionarBtnCargosClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure cargosEditarBtnClick(Sender: TObject);
    procedure btnSalvarCargoClick(Sender: TObject);
    procedure GridCargosDblClick(Sender: TObject);
    procedure btnAddCargoClick(Sender: TObject);
    procedure atualizarCodigoCargo(Sender: TObject);
    procedure btnSalvarRegistroClick(Sender: TObject);
    procedure btnRemoverCargoClick(Sender: TObject);
    procedure btnCancelarRegistroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PgControlChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroCargos: TCadastroCargos;
  CodigoCargo : Integer;

implementation

{$R *.dfm}

procedure TCadastroCargos.btnAddCargoClick(Sender: TObject);
begin
  PgControl.ActivePage :=  Registro ;
  atualizarCodigoCargo(Self);
end;

procedure TCadastroCargos.adicionarBtnCargosClick(Sender: TObject);
begin
  QueryCargos.Append;
end;

procedure TCadastroCargos.atualizarCodigoCargo(Sender: TObject);
begin
  QueryCargos.Last;
  if (QueryCargos.FieldByName('CODIGO') = nil) then
    begin
      CodigoCargo := 1;
      Exit;
    end;
  CodigoCargo :=  QueryCargos.FieldByName('CODIGO').Value + 1;
  QueryCargos.Append;
  edtCodigo.Text := IntToStr(CodigoCargo);
end;

procedure TCadastroCargos.btnSalvarClick(Sender: TObject);
begin
  QueryCargos.Post;
end;

procedure TCadastroCargos.btnCancelarRegistroClick(Sender: TObject);
begin
  if (QueryCargos.State in [dsInsert, dsEdit]) then
  begin
    QueryCargos.Cancel;
    ShowMessage('Operação de adição/edição cancelada');
  end;
  PgControl.ActivePage := Cargos;
end;

procedure TCadastroCargos.cargosEditarBtnClick(Sender: TObject);
begin
  QueryCargos.Edit;
end;

procedure TCadastroCargos.btnSalvarCargoClick(Sender: TObject);
begin
  QueryCargos.Post;
  ShowMessage('Cargo Atualizado com sucesso.');
end;

procedure TCadastroCargos.GridCargosDblClick(Sender: TObject);
begin
  if not QueryCargos.IsEmpty then
    begin
      QueryCargos.Edit;
    end;
end;

procedure TCadastroCargos.FormCreate(Sender: TObject);
begin
  QueryCargos.Open;
  PgControl.ActivePage := Cargos;
end;

procedure TCadastroCargos.FormDestroy(Sender: TObject);
begin
  QueryCargos.Close;
end;

procedure TCadastroCargos.PgControlChange(Sender: TObject);
begin
  if (PgControl.ActivePage = Cargos) and (QueryCargos.State in [dsInsert, dsEdit]) then
    QueryCargos.Cancel;
end;

procedure TCadastroCargos.btnRemoverCargoClick(Sender: TObject);
begin
  if not QueryCargos.IsEmpty then
    begin
      QueryCargos.Delete;
      atualizarCodigoCargo(Self);
    end
  else
    begin
      ShowMessage('Selecione um cargo para remove-lo');
    end;
end;

procedure TCadastroCargos.btnSalvarRegistroClick(Sender: TObject);
begin

    if (TrimLeft(edtNome.Text) = '') then
      begin
        ShowMessage('O nome do cargo é obrigatório.');
        Exit;
      end;
    QueryCargos.Post;
    QueryCargos.Refresh;
    PgControl.ActivePage := Cargos ;
end;

end.
