program DesafioHoraExtra;

uses
  Vcl.Forms,
  PrincipalForm in 'PrincipalForm.pas' {Principal},
  HoraExtraClass in 'HoraExtraClass.pas',
  HoraExtraListClass in 'HoraExtraListClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.Run;
end.
