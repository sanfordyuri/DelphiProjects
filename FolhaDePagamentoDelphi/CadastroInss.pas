unit CadastroInss;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TTCadastroInss = class(TForm)
    StrGridInss: TStringGrid;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TCadastroInss: TTCadastroInss;

implementation

{$R *.dfm}

procedure TTCadastroInss.FormCreate(Sender: TObject);
begin
  StrGridInss.Cells[0,0] := 'Salário do contribuinte';
  StrGridInss.Cells[1,0] := 'Alíquota';
  StrGridInss.Cells[0,1] := 'Até R$ 1.100';
  StrGridInss.Cells[1,1] := '7,5%';
  StrGridInss.Cells[0,2] := 'De R$ 1.100,01 a R$ 2.203,48';
  StrGridInss.Cells[1,2] := '9%';
  StrGridInss.Cells[0,3] := 'De R$ 2.203,49 até R$ 3.305,22';
  StrGridInss.Cells[1,3] := '12%';
  StrGridInss.Cells[0,4] := 'De R$ 3.305,23 até R$ 6.433,57';
  StrGridInss.Cells[1,4] := '14%';
end;

end.
