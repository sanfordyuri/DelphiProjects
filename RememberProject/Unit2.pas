unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    palavrasGroup: TRadioGroup;
    Button1: TButton;
    resultadoLabel: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
      { Private declarations }
  public
    { Public declarations }
    function embaracar(palavra:String):String;
  end;

var
  Form2: TForm2;

implementation
uses Unit1, Unit3;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  resultadoLabel.Caption := '';
  Unit3.contador := 0;
  Unit1.tempo := 0;
  Unit1.Form1.Show;
  Unit2.Form2.Close;
end;

function TForm2.embaracar(palavra:String):String;
var
  I:Integer;
  index:Integer;
  palavraNova:String;
begin
    palavraNova := '';
    for I := 1 to palavra.Length do
      begin
        index := Random(palavra.Length);
        palavraNova := palavraNova + palavra.ToCharArray[index];
      end;
    Result := palavraNova;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  if palavrasGroup.Items[palavrasGroup.ItemIndex] = Unit1.Form1.palavraEdit.Text then
    resultadoLabel.Caption := 'Correto, parabéns'
  else
    resultadoLabel.Caption := 'Resposta errada!';
end;

end.
