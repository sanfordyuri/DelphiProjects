unit CadastroIR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TCadastroIrrf = class(TForm)
    Label1: TLabel;
    StrGridIrrf: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroIrrf: TCadastroIrrf;

implementation

{$R *.dfm}

procedure TCadastroIrrf.FormCreate(Sender: TObject);
begin
  StrGridIrrf.Cells[0,0] := 'Base de cálculo';
  StrGridIrrf.Cells[1,0] := 'Alíquota';
  StrGridIrrf.Cells[2,0] := 'Dedução';

  StrGridIrrf.Cells[0,1] := 'de 0,00 até 1.903,98';
  StrGridIrrf.Cells[1,1] := 'isento';
  StrGridIrrf.Cells[2,1] := '0,00';

  StrGridIrrf.Cells[0,2] := 'de 1.903,99 até 2.826,65';
  StrGridIrrf.Cells[1,2] := '7,50%';
  StrGridIrrf.Cells[2,2] := '142,80';

  StrGridIrrf.Cells[0,3] := 'de 2.826,66 até 3.751,05';
  StrGridIrrf.Cells[1,3] := '15,00%';
  StrGridIrrf.Cells[2,3] := '354,80';

  StrGridIrrf.Cells[0,4] := 'de 3.751,06 até 4.664,68';
  StrGridIrrf.Cells[1,4] := '22,50%';
  StrGridIrrf.Cells[2,4] := '636,13';

  StrGridIrrf.Cells[0,5] := 'a partir de 4.664,68';
  StrGridIrrf.Cells[1,5] := '27,50%';
  StrGridIrrf.Cells[2,5] := '869,36';
end;

end.
