program Project2;

uses
  Vcl.Forms,
  Unit2 in 'C:\Users\55859\Documents\Embarcadero\Studio\Projects\Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
