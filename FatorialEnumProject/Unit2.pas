unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
type
  EFatorial = (Cinco,Quatro,Tres,Dois,Um);
const
  EFatorialExtenso: array [EFatorial] of String = ('Cinco x ', 'Quatro x ', 'Tres x ','Dois x ','Um = 120 ');
var
  FatorialSeguinte: set of EFatorial;
  VALOR: EFatorial;
begin
  FatorialSeguinte := [Quatro,Tres,Dois,Um];
  Memo1.Clear;
  for VALOR in FatorialSeguinte do
    Memo1.Lines.Add(EFatorialExtenso[VALOR]);
end;

end.
