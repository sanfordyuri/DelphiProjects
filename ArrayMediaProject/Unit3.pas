unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  arrayDeInteiros: array[0..19] of Integer;
  I:Integer;
  Soma:Integer;
  V: Integer;
  Media: Double;
begin
  Memo1.Clear;
  for I := 0 to Length(arrayDeInteiros)-1 do
    begin
      arrayDeInteiros[I] := Random(100);
      Memo1.Lines.Add(IntToStr(I+1) + 'º = ' + arrayDeInteiros[I].ToString);
    end;
  Soma := 0;
  for V in arrayDeInteiros do
    begin
      Soma := Soma + V;
    end;
  Media := Soma/20;
  Label2.Caption := 'Média: ' + Media.ToString;

end;

end.
