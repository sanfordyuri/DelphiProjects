program FolhaDePagamento;

uses
  Vcl.Forms,
  FormPrincipal in 'FormPrincipal.pas' {TFormPrincipal},
  Conexao in 'Conexao.pas' {DM: TDataModule},
  CadastroCargos2 in 'CadastroCargos2.pas' {CadastroCargos},
  CadastroFuncionarios2 in 'CadastroFuncionarios2.pas' {CadastroFuncionario},
  CadastroEventos in 'CadastroEventos.pas' {TCadastroEvento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTFormPrincipal, TFormPrincipal);
  Application.Run;
end.
