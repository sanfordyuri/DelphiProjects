unit CadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.Bind.Components, Data.Bind.DBScope, Vcl.ExtCtrls,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    codigoFuncionarioEdt: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    nomeFuncionarioEdt: TEdit;
    Label3: TLabel;
    codigoCargoEdt: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    emailFuncionarioEdt: TEdit;
    Label6: TLabel;
    radioGroupStatus: TRadioGroup;
    SalvarBtn: TButton;
    BindSourceTB_FUNCIONARIO: TBindSourceDB;
    FDTableTB_FUNCIONARIO: TFDTable;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkPropertyToFieldItemIndex: TLinkPropertyToField;
    nascimentoEdt: TEdit;
    contatoEdt: TEdit;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    procedure FormShow(Sender: TObject);
    procedure SalvarBtnClick(Sender: TObject);
    procedure AtualizarCodigo(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Conection: TFDConnection;
  ID_FUNCIONARIO: Integer;

implementation

{$R *.dfm}

procedure TForm1.SalvarBtnClick(Sender: TObject);
begin
   FDTableTB_FUNCIONARIO.Post;
   AtualizarCodigo(Self);
end;

procedure TForm1.AtualizarCodigo(Sender: TObject);
begin
    FDTableTB_FUNCIONARIO.Last;
    ID_FUNCIONARIO := FDTableTB_FUNCIONARIO.FieldByName('CODIGO').Value + 1;
    FDTableTB_FUNCIONARIO.Insert;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Conection := Conexao.DM.Connection;
  FDTableTB_FUNCIONARIO.Insert;
end;

end.
