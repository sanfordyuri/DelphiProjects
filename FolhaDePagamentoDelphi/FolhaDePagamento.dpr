program FolhaDePagamento;

uses
  Vcl.Forms,
  FormPrincipal in 'FormPrincipal.pas' {TFormPrincipal},
  Conexao in 'Conexao.pas' {DataModule2: TDataModule},
  CadastroCargos2 in 'CadastroCargos2.pas' {Form2},
  CadastroFuncionarios2 in 'CadastroFuncionarios2.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTFormPrincipal, TFormPrincipal);
  Application.CreateForm(TDataModule2, DM);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
