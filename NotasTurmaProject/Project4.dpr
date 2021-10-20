program Project4;

uses
  Vcl.Forms,
  Unit4 in 'C:\Users\55859\Documents\Embarcadero\Studio\Projects\Unit4.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
