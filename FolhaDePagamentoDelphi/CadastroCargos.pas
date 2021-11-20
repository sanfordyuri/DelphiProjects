unit CadastroCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Conexao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TCadastro = class(TForm)
    cargoNomeEdt: TEdit;
    Label1: TLabel;
    salvarBtn: TButton;
    DataSource1: TDataSource;
    BindSourceTB_CARGO: TBindSourceDB;
    FDTableTB_CARGO: TFDTable;
    FDTableTB_CARGOCODIGO: TIntegerField;
    FDTableTB_CARGONOME: TStringField;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    Label2: TLabel;
    codigoCargoEdt: TEdit;
    LinkControlToField2: TLinkControlToField;
    procedure salvarBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FDTableTB_CARGOBeforePost(DataSet: TDataSet);
    procedure atualizaIdCodigo(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro: TCadastro;
  Connection: TFDConnection;
  ID_CARGO: Integer;
  CargoNome: String;

implementation
{$R *.dfm}

procedure TCadastro.atualizaIdCodigo(Sender: TObject);
begin
    FDTableTB_CARGO.Last;
    ID_CARGO := FDTableTB_CARGO.FieldByName('CODIGO').Value + 1;
    FDTableTB_CARGO.Insert;
end;

procedure TCadastro.FDTableTB_CARGOBeforePost(DataSet: TDataSet);
begin
  FDTableTB_CARGO.FieldByName('CODIGO').Value := ID_CARGO;
  FDTableTB_CARGO.FieldByName('NOME').Value := cargoNomeEdt.Text;
end;

procedure TCadastro.FormShow(Sender: TObject);
begin
  if Conexao.DM.Connection.Connected = true then
    begin
      Try
        FDTableTB_CARGO.Connection := Conexao.DM.Connection;
        FDTableTB_CARGO.Open;
        atualizaIdCodigo(self);
        FDTableTB_CARGO.Insert;
      Except
        ID_CARGO := 0;
      End;
    end
end;


procedure TCadastro.salvarBtnClick(Sender: TObject);
begin
  CargoNome := cargoNomeEdt.Text;
  FDTableTB_CARGO.Post;
  ShowMessage('Cargo adicionado com sucesso.'+sLineBreak+sLineBreak+'Cargo adicionado: ' + CargoNome);
  atualizaIdCodigo(self);
end;


end.
