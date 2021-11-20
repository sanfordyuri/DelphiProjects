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
  TForm3 = class(TForm)
    DtsFuncionario: TDataSource;
    QueryFuncionario: TFDQuery;
    QueryFuncionarioCODIGO: TIntegerField;
    QueryFuncionarioNOME: TStringField;
    QueryFuncionarioNASCIMENTO: TSQLTimeStampField;
    QueryFuncionarioCARGO: TIntegerField;
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
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    salvarFuncionarioRegisBtn: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure addFuncionarioBtnClick(Sender: TObject);
    procedure salvarFuncionarioRegisBtnClick(Sender: TObject);
    procedure atualizarCodigo(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  CodigoFun: Integer;

implementation

{$R *.dfm}

procedure TForm3.addFuncionarioBtnClick(Sender: TObject);
begin
  PageControl1.ActivePage := Registro;
  atualizarCodigo(Self);
end;

procedure TForm3.atualizarCodigo(Sender: TObject);
begin
  QueryFuncionario.Last;
  CodigoFun :=  QueryFuncionario.FieldByName('CODIGO').Value + 1;
  QueryFuncionario.Append;
  DBEdit1.Text := IntToStr(CodigoFun);
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QueryCargos2.Close;
  QueryFuncionario.Close;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  QueryCargos2.Open;
  QueryFuncionario.Open;
end;

procedure TForm3.salvarFuncionarioRegisBtnClick(Sender: TObject);
begin
  QueryFuncionario.Post;
  PageControl1.ActivePage := Funcionarios;
end;

end.
