unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Conexao, CadastroCargos, CadastroFuncionarios2, CadastroCargos2,
  Vcl.StdCtrls, CadastroEventos, CadastroInss, CadastroIR, MovimentoSalario, MovimentoEventos, RelFunForm, MovimentoFolha, RelFolhaForm;

type
  TTFormPrincipal = class(TForm)
    Menu: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentos1: TMenuItem;
    Movimentos2: TMenuItem;
    btnSairMenu: TMenuItem;
    CargosBtnMenu: TMenuItem;
    EventosBtnMenu: TMenuItem;
    FuncionariosBtnMenu: TMenuItem;
    Funcionrios2: TMenuItem;
    TabeladeINSS1: TMenuItem;
    TabeladeIRRF: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Mudanadesalrios1: TMenuItem;
    MovimentoEventos: TMenuItem;
    MovumentoFolhaDePagamento: TMenuItem;
    RelFolha: TMenuItem;
    RelFuncionarios: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnSairMenuClick(Sender: TObject);
    procedure CargosBtnMenuClick(Sender: TObject);
    procedure FuncionariosBtnMenuClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EventosBtnMenuClick(Sender: TObject);
    procedure TabeladeINSS1Click(Sender: TObject);
    procedure TabeladeIRRFClick(Sender: TObject);
    procedure Mudanadesalrios1Click(Sender: TObject);
    procedure MovimentoEventosClick(Sender: TObject);
    procedure RelFuncionariosClick(Sender: TObject);
    procedure MovumentoFolhaDePagamentoClick(Sender: TObject);
    procedure RelFolhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TFormPrincipal: TTFormPrincipal;
  Cadastro2Cargos: TCadastroCargos;
  CadastroFuncionarios: TCadastroFuncionario;
  CadastroEventos:  TTCadastroEvento;
  CadastroInss: TTCadastroInss;
  CadastroIr: TCadastroIrrf;
  MovimentoSalario: TMovimentoSalarios;
  MovimentoEvento: TMovimentoEvento;
  RelFunForm: TRelFunForms;
  RelFolhaForm: TRelFolhasForm;
  MovFolha: TMovFolhaDePagamento;
  DM: TDM;

implementation

{$R *.dfm}

procedure TTFormPrincipal.EventosBtnMenuClick(Sender: TObject);
begin
  CadastroEventos := TTCadastroEvento.Create(Self);
  CadastroEventos.ShowModal;
  CadastroEventos.Free;
end;

procedure TTFormPrincipal.CargosBtnMenuClick(Sender: TObject);
begin
  Cadastro2Cargos := TCadastroCargos.Create(Self);
  Cadastro2Cargos.ShowModal;
  Cadastro2Cargos.Free;
end;

procedure TTFormPrincipal.RelFolhaClick(Sender: TObject);
begin
  RelFolhaForm := TRelFolhasForm.Create(Self);
  RelFolhaForm.ShowModal;
  RelFolhaForm.Free;
end;

procedure TTFormPrincipal.RelFuncionariosClick(Sender: TObject);
begin
  RelFunForm := TRelFunForms.Create(Self);
  RelFunForm.ShowModal;
  RelFunForm.Free;
end;

procedure TTFormPrincipal.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(Self);
end;

procedure TTFormPrincipal.FormDestroy(Sender: TObject);
begin
  DM.Free;
end;

procedure TTFormPrincipal.FuncionariosBtnMenuClick(Sender: TObject);
begin
  CadastroFuncionarios := TCadastroFuncionario.Create(Self);
  CadastroFuncionarios.ShowModal;
  CadastroFuncionarios.Free;
end;

procedure TTFormPrincipal.MovimentoEventosClick(Sender: TObject);
begin
  MovimentoEvento := TMovimentoEvento.Create(Self);
  MovimentoEvento.ShowModal;
  MovimentoEvento.Free;
end;

procedure TTFormPrincipal.MovumentoFolhaDePagamentoClick(Sender: TObject);
begin
  MovFolha := TMovFolhaDePagamento.Create(Self);
  MovFolha.ShowModal;
  MovFolha.Free;
end;

procedure TTFormPrincipal.Mudanadesalrios1Click(Sender: TObject);
begin
  MovimentoSalario := TMovimentoSalarios.Create(Self);
  MovimentoSalario.ShowModal;
  MovimentoSalario.Free;
end;

procedure TTFormPrincipal.TabeladeINSS1Click(Sender: TObject);
begin
  CadastroInss := TTCadastroInss.Create(Self);
  CadastroInss.ShowModal;
  CadastroInss.Free;
end;

procedure TTFormPrincipal.TabeladeIRRFClick(Sender: TObject);
begin
  CadastroIrrf := TCadastroIrrf.Create(Self);
  CadastroIrrf.ShowModal;
  CadastroIrrf.Free;
end;

procedure TTFormPrincipal.btnSairMenuClick(Sender: TObject);
begin
  Close;
end;

end.
