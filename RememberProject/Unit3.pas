unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    timeLabel: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);

  private
    procedure actions;
    { Private declarations }
  public
    { Public declarations}

  end;

var
  Form3: TForm3;
  contador:Integer=0;

implementation
uses Unit1, Unit2;

{$R *.dfm}


procedure TForm3.Timer1Timer(Sender: TObject);
  var
    diferenca:Integer;
begin
  contador := contador + 1;
  diferenca := Unit1.tempo - contador;
  timeLabel.Caption := diferenca.ToString + ' segundos';
  if contador = Unit1.tempo then
    actions;
end;

procedure TForm3.actions;
  var pos:Integer;
  I: Integer;
begin
    pos := Random(4);
    for I := 0 to 3 do
      begin
          Unit2.Form2.palavrasGroup.Items[i] := Unit2.Form2.embaracar(Unit1.Form1.palavraEdit.Text);
      end;
    Unit2.Form2.palavrasGroup.Items[pos] := Unit1.Form1.palavraEdit.Text;
    Unit2.Form2.Show;
    Self.Close;
    Timer1.Enabled := FALSE;
end;


end.
