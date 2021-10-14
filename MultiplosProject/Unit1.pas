unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    untilValueEdit: TEdit;
    allMultipliesMemo: TMemo;
    iniciarButton: TButton;
    Label3: TLabel;
    procedure iniciarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function getAllMultiplies(n:Integer):TArray<String>;
var
  multiplies: TArray<String>;
  I: Integer;
begin
  for I := 1 to n do
    begin
      if ((I mod 3) = 0) AND ((I mod 5) = 0) then
        begin
          SetLength(multiplies, Length(multiplies)+1);
          multiplies[High(multiplies)] := IntToStr(I) + ' - FIZZBUZZ';
        end
      else if ((I mod 3) = 0) then
        begin
          SetLength(multiplies, Length(multiplies)+1);
          multiplies[High(multiplies)] := IntToStr(I) + ' - FIZZ';
        end
      else if ((I mod 5) = 0) then
        begin
          SetLength(multiplies, Length(multiplies)+1);
          multiplies[High(multiplies)] := IntToStr(I) + ' - BUZZ'
        end
    end;
    Result := multiplies;
end;

procedure TForm1.iniciarButtonClick(Sender: TObject);
var
  n:Integer;
  multiplies: TArray<String>;
  Str:String;
begin
   n := StrToInt(untilValueEdit.Text);
   multiplies := getAllMultiplies(n);
   allMultipliesMemo.Clear;
   for Str in multiplies do
     allMultipliesMemo.Lines.Add(Str);

end;



end.
