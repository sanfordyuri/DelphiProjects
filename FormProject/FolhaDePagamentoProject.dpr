program FolhaDePagamentoProject;

uses
  Vcl.Forms,
  UnitFolha in 'UnitFolha.pas' {Form6},
  Empregado in 'C:\Users\55859\Documents\Embarcadero\Studio\Projects\Empregado.pas',
  EdicaoEmpregado in 'EdicaoEmpregado.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
