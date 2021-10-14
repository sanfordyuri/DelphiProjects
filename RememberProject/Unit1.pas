unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    tempoComboBox: TComboBox;
    Label5: TLabel;
    rodarButton: TButton;
    Button2: TButton;
    palavraEdit: TEdit;
    procedure rodarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;
  tempo:Integer;

implementation
uses Unit3;
{$R *.dfm}

function retornaTempo(index: Integer):Integer;
begin
  if index = 0 then
    Result := 1
  else if index = 1 then
    Result := 5
  else if index = 2 then
    Result := 10
  else if index = 3 then
    Result := 15
end;
procedure TForm1.rodarButtonClick(Sender: TObject);
begin
  tempo := retornaTempo(tempoComboBox.ItemIndex);
  Unit3.Form3.timeLabel.Caption := tempo.ToString + ' segundos';
  Unit3.Form3.Show;
  Unit3.Form3.Timer1.Enabled := True;
  Self.Hide;
end;


end.

