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
    PageControl1: TPageControl;
    Funcionarios: TTabSheet;
    DBGrid1: TDBGrid;
    addFuncionarioBtn: TButton;
    removeFuncionariobtn: TButton;
    SalvarFuncionarioBtn: TButton;
    Registro: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    salvarFuncionarioRegisBtn: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    cancelarFuncionarioBtn: TButton;
    QueryCargos2CODIGO: TIntegerField;
    QueryCargos2NOME: TStringField;
    QueryFuncionarioNOME_CARGO: TStringField;
    QueryFuncionarioCARGO: TIntegerField;
    Panel1: TPanel;
    QuerySalario: TFDQuery;
    DtsSalario: TDataSource;
    Label8: TLabel;
    SalarioEdt: TDBEdit;
    DBGrid2: TDBGrid;
    QuerySalarioFUNCIONARIO: TIntegerField;
    QuerySalarioSALARIO: TSingleField;
    QuerySalarioDATA: TSQLTimeStampField;
    procedure addFuncionarioBtnClick(Sender: TObject);
    procedure salvarFuncionarioRegisBtnClick(Sender: TObject);
    procedure atualizarCodigo(Sender: TObject);
    procedure cancelarFuncionarioBtnClick(Sender: TObject);
    procedure removeFuncionariobtnClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SalvarFuncionarioBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
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

procedure TCadastroFuncionario.addFuncionarioBtnClick(Sender: TObject);
begin
  atualizarCodigo(Self);
  Sleep(100);
  PageControl1.ActivePage := Registro;
  Panel1.Visible := true;

end;

procedure TCadastroFuncionario.atualizarCodigo(Sender: TObject);
begin
  if QueryFuncionario.RowsAffected = 0 then
    begin
      QueryFuncionario.Append;
      CodigoFun := 1;
      DBEdit1.Text := IntToStr(CodigoFun);
      Exit;
    end;
  if not QueryFuncionario.IsEmpty then
    begin
      QueryFuncionario.Last;
      CodigoFun :=  QueryFuncionario.FieldByName('CODIGO').Value + 1;
      QueryFuncionario.Append;
      DBEdit1.Text := IntToStr(CodigoFun);
    end;

end;

procedure TCadastroFuncionario.cancelarFuncionarioBtnClick(Sender: TObject);
begin
  QueryFuncionario.Cancel;
  ShowMessage('Opera��o de adi��o cancelada');
  PageControl1.ActivePage := Funcionarios;
  SalarioEdt.Text := '';
  Panel1.Visible := false;
end;

procedure TCadastroFuncionario.DBGrid1DblClick(Sender: TObject);
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
  PageControl1.ActivePage := Funcionarios;
end;

procedure TCadastroFuncionario.FormDestroy(Sender: TObject);
begin
  QueryCargos2.Close;
  QueryFuncionario.Close;
  QuerySalario.Close;
end;

procedure TCadastroFuncionario.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePage = Funcionarios) and (QueryFuncionario.State in [dsInsert, dsEdit]) then
    begin
        QueryFuncionario.Cancel;
        SalarioEdt.Text := '';
        Panel1.Visible := false;
    end;

end;

procedure TCadastroFuncionario.removeFuncionariobtnClick(Sender: TObject);
begin
  if not QueryFuncionario.IsEmpty then
    begin
      QueryFuncionario.Delete;
    end
  else
    begin
      ShowMessage('Selecione um funcion�rio para remove-lo');
    end;
end;

procedure TCadastroFuncionario.SalvarFuncionarioBtnClick(Sender: TObject);
begin
  QueryFuncionario.Post;
  SalarioEdt.Text := '';
  Panel1.Visible := false;
  ShowMessage('Funcion�rio Atualizado com sucesso.');
end;

procedure TCadastroFuncionario.salvarFuncionarioRegisBtnClick(Sender: TObject);
  var
    Salario: Currency;
begin
  if (QueryFuncionario.State in [dsInsert, dsEdit]) then
    begin
      QueryFuncionario.Post;

      //Salario := StrToFloat(SalarioEdt.Text);
      Salario := StrToFloatDef(SalarioEdt.Text, 0);
      if (Salario > 0) then
        begin
          QuerySalario.Append;
          QuerySalarioFUNCIONARIO.AsString := QueryFuncionarioCODIGO.AsString;
          QuerySalarioDATA.AsDateTime := Now;
          QuerySalarioSALARIO.AsFloat := Salario;
          QuerySalario.Post;
          Panel1.Visible := false;
          SalarioEdt.Text := '';
        end;

    end;

    PageControl1.ActivePage := Funcionarios;
end;

end.
