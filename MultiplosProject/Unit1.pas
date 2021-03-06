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
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    counterThree: TLabel;
    counterFive: TLabel;
    counterFT: TLabel;
    procedure iniciarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  cT: Integer;
  cF: Integer;
  cTF: Integer;
const
  FIVE_THREE : String = 'FIZZBUZZ';
  ONLY_THREE : String = 'FIZZ';
  ONLY_FIVE : String = 'BUZZ';

implementation

{$R *.dfm}

function getAllMultiplies(n:Integer):TArray<String>;
var
  multiplies: TArray<String>;
  I: Integer;
begin
  cF := 0;
  cT := 0;
  cTF := 0;
  for I := 1 to n do
    begin
      SetLength(multiplies, Length(multiplies)+1);
      if ((I mod 3) = 0) AND ((I mod 5) = 0) then
        begin
          multiplies[High(multiplies)] := FIVE_THREE;
          cTF := cTF + 1;
        end
      else if ((I mod 3) = 0) then
        begin
          multiplies[High(multiplies)] := ONLY_THREE;
          cT := cT + 1;
        end
      else if ((I mod 5) = 0) then
        begin
          multiplies[High(multiplies)] := ONLY_FIVE;
          cF := cF + 1;
        end
      else
        begin
          multiplies[High(multiplies)] := IntToStr(I);
        end;
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
   counterThree.Caption := IntToStr(cT);
   counterFive.Caption := IntToStr(cF);
   counterFT.Caption := IntToStr(cTF);
end;



end.
