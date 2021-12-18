unit CadastroFuncionarios2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Conexao, Vcl.DBCtrls, Vcl.Mask, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, Vcl.ExtCtrls;

type
  TCadastroFuncionario = class(TForm)
    DtsFuncionario: TDataSource;
    QueryFuncionario: TFDQuery;
    QueryFuncionarioCODIGO: TIntegerField;
    QueryFuncionarioNOME: TStringField;
    QueryFuncionarioNASCIMENTO: TSQLTimeStampField;
    QueryFuncionarioCONTATO: TStringField;
    QueryFuncionarioEMAIL: TStringField;
    QueryFuncionarioSTATUS: TStringField;
    DtsCargos2: TDataSource;
    QueryCargos2: TFDQuery;
    PgControl: TPageControl;
    Funcionarios: TTabSheet;
    GridFuncionarios: TDBGrid;
    btnAddFuncionario: TButton;
    btnRemoverFuncionario: TButton;
    btnSalvarFuncionario: TButton;
    Registro: TTabSheet;
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblNascimento: TLabel;
    lblCargo: TLabel;
    lblContato: TLabel;
    lblEmail: TLabel;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtNascimento: TDBEdit;
    edtContato: TDBEdit;
    edtEmail: TDBEdit;
    btnSalvarRegistro: TButton;
    edtCargo: TDBLookupComboBox;
    rgFuncionario: TDBRadioGroup;
    btnCancelarRegistro: TButton;
    QueryCargos2CODIGO: TIntegerField;
    QueryCargos2NOME: TStringField;
    QueryFuncionarioNOME_CARGO: TStringField;
    QueryFuncionarioCARGO: TIntegerField;
    Panel1: TPanel;
    QuerySalario: TFDQuery;
    DtsSalario: TDataSource;
    lblSalario: TLabel;
    edtSalario: TDBEdit;
    gridSalarios: TDBGrid;
    QuerySalarioFUNCIONARIO: TIntegerField;
    QuerySalarioSALARIO: TSingleField;
    QuerySalarioDATA: TSQLTimeStampField;
    procedure btnAddFuncionarioClick(Sender: TObject);
    procedure btnSalvarRegistroClick(Sender: TObject);
    procedure atualizarCodigo(Sender: TObject);
    procedure btnCancelarRegistroClick(Sender: TObject);
    procedure btnRemoverFuncionarioClick(Sender: TObject);
    procedure GridFuncionariosDblClick(Sender: TObject);
    procedure btnSalvarFuncionarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PgControlChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroFuncionario: TCadastroFuncionario;
  CodigoFun: Integer;

implementation

{$R *.dfm}

procedure TCadastroFuncionario.btnAddFuncionarioClick(Sender: TObject);
begin
  atualizarCodigo(Self);
  Sleep(100);
  PgControl.ActivePage := Registro;
  Panel1.Visible := true;

end;

procedure TCadastroFuncionario.atualizarCodigo(Sender: TObject);
begin
  if QueryFuncionario.RowsAffected = 0 then
    begin
      QueryFuncionario.Append;
      CodigoFun := 1;
      edtCodigo.Text := IntToStr(CodigoFun);
      Exit;
    end;
  if not QueryFuncionario.IsEmpty then
    begin
      QueryFuncionario.Last;
      CodigoFun :=  QueryFuncionario.FieldByName('CODIGO').Value + 1;
      QueryFuncionario.Append;
      edtCodigo.Text := IntToStr(CodigoFun);
    end;

end;

procedure TCadastroFuncionario.btnCancelarRegistroClick(Sender: TObject);
begin
  QueryFuncionario.Cancel;
  ShowMessage('Operação de adição cancelada');
  PgControl.ActivePage := Funcionarios;
  edtSalario.Text := '';
  Panel1.Visible := false;
end;

procedure TCadastroFuncionario.GridFuncionariosDblClick(Sender: TObject);
begin
    if not QueryFuncionario.IsEmpty then
    begin
      QueryFuncionario.Edit;
    end;
end;

procedure TCadastroFuncionario.FormCreate(Sender: TObject);
begin
  QueryCargos2.Open;
  QueryFuncionario.Open;
  QuerySalario.Open;
  PgControl.ActivePage := Funcionarios;
end;

procedure TCadastroFuncionario.FormDestroy(Sender: TObject);
begin
  QueryCargos2.Close;
  QueryFuncionario.Close;
  QuerySalario.Close;
end;

procedure TCadastroFuncionario.PgControlChange(Sender: TObject);
begin
  if (PgControl.ActivePage = Funcionarios) and (QueryFuncionario.State in [dsInsert, dsEdit]) then
    begin
        QueryFuncionario.Cancel;
        edtSalario.Text := '';
        Panel1.Visible := false;
    end;

end;

procedure TCadastroFuncionario.btnRemoverFuncionarioClick(Sender: TObject);
begin
  if not QueryFuncionario.IsEmpty then
    begin
      QueryFuncionario.Delete;
      atualizarCodigo(self);
    end
  else
    begin
      ShowMessage('Selecione um funcionário para remove-lo');
    end;
end;

procedure TCadastroFuncionario.btnSalvarFuncionarioClick(Sender: TObject);
begin
  QueryFuncionario.Post;
  edtSalario.Text := '';
  Panel1.Visible := false;
  ShowMessage('Funcionário Atualizado com sucesso.');
end;

procedure TCadastroFuncionario.btnSalvarRegistroClick(Sender: TObject);
  var
    Salario: Currency;
begin
  if (QueryFuncionario.State in [dsInsert, dsEdit]) then
    begin
      QueryFuncionario.Post;

      Salario := StrToFloatDef(edtSalario.Text, 0);
      if (Salario > 0) then
        begin
          QuerySalario.Append;
          QuerySalarioFUNCIONARIO.AsString := QueryFuncionarioCODIGO.AsString;
          QuerySalarioDATA.AsDateTime := Trunc(Now);
          QuerySalarioSALARIO.AsFloat := Salario;
          QuerySalario.Post;
          Panel1.Visible := false;
          edtSalario.Text := '';
        end;

    end;

    PgControl.ActivePage := Funcionarios;
end;

end.
