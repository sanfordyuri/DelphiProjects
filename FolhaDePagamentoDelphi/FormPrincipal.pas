﻿unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Conexao, CadastroCargos, CadastroFuncionarios2, CadastroCargos2;

type
  TTFormPrincipal = class(TForm)
    Menu: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentos1: TMenuItem;
    Movimentos2: TMenuItem;
    btnSairMenu: TMenuItem;
    CargosBtnMenu: TMenuItem;
    Cargos2: TMenuItem;
    FuncionariosBtnMenu: TMenuItem;
    Funcionrios2: TMenuItem;
    abeladeINSS1: TMenuItem;
    abeladeINSS2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Mudanadesalrios1: TMenuItem;
    Mudanadesalrios2: TMenuItem;
    Folhadepagamento1: TMenuItem;
    Folha1: TMenuItem;
    Folha2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnSairMenuClick(Sender: TObject);
    procedure CargosBtnMenuClick(Sender: TObject);
    procedure FuncionariosBtnMenuClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TFormPrincipal: TTFormPrincipal;
  Cadastro2Cargos: TForm2;
  CadastroFuncionarios: TForm3;
  DM: TDataModule2;

implementation

{$R *.dfm}

procedure TTFormPrincipal.CargosBtnMenuClick(Sender: TObject);
begin

  Cadastro2Cargos := TForm2.Create(Self);
  Cadastro2Cargos.ShowModal;
  Cadastro2Cargos.Free;
end;

procedure TTFormPrincipal.FormCreate(Sender: TObject);
begin
  DM := TDataModule2.Create(Self);
end;

procedure TTFormPrincipal.FormDestroy(Sender: TObject);
begin
  DM.Free;
end;

procedure TTFormPrincipal.FuncionariosBtnMenuClick(Sender: TObject);
begin
  CadastroFuncionarios := TForm3.Create(Self);
  CadastroFuncionarios.ShowModal;
  CadastroFuncionarios.Free;
end;

procedure TTFormPrincipal.btnSairMenuClick(Sender: TObject);
begin
  Close;
end;

end.
