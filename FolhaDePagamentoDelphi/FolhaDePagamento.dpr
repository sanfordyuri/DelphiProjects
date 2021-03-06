program FolhaDePagamento;

uses
  Vcl.Forms,
  FormPrincipal in 'FormPrincipal.pas' {TFormPrincipal},
  Conexao in 'Conexao.pas' {DM: TDataModule},
  CadastroCargos2 in 'CadastroCargos2.pas' {CadastroCargos},
  CadastroFuncionarios2 in 'CadastroFuncionarios2.pas' {CadastroFuncionario},
  CadastroEventos in 'CadastroEventos.pas' {TCadastroEvento},
  CadastroInss in 'CadastroInss.pas' {TCadastroInss},
  CadastroIR in 'CadastroIR.pas' {CadastroIrrf},
  MovimentoSalario in 'MovimentoSalario.pas' {MovimentoSalarios},
  MovimentoEventos in 'MovimentoEventos.pas' {MovimentoEvento},
  RelFuncionarios in 'RelFuncionarios.pas' {RelFunCfg},
  RelFunForm in 'RelFunForm.pas' {RelFunForms},
  MovimentoFolha in 'MovimentoFolha.pas' {MovFolhaDePagamento},
  CalcInss in 'CalcInss.pas',
  CalcIrrf in 'CalcIrrf.pas',
  RelFolha in 'RelFolha.pas' {RelFolhaCfg},
  RelFolhaForm in 'RelFolhaForm.pas' {RelFolhasForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTFormPrincipal, TFormPrincipal);
  Application.Run;
end.
