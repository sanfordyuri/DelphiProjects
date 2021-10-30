unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm5 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    lblTotal: TLabel;
    Label2: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtQntd: TEdit;
    edtPreco: TEdit;
    Label5: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure reordenarStringGrid(strgrid: TStringGrid; totalLbl: TLabel);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  totalCompras: Currency = 0.0;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  nome:String;
  preco:Currency;
  quantidade:Integer;
  total:Currency;
begin
  nome := edtNome.Text;
  quantidade := StrToInt(edtQntd.Text);
  preco := StrToCurr(edtPreco.Text);
  StringGrid1.Cells[0,StringGrid1.RowCount] := nome;
  StringGrid1.Cells[1,StringGrid1.RowCount] := IntToStr(quantidade);
  StringGrid1.Cells[2,StringGrid1.RowCount] := CurrToStr(preco);
  StringGrid1.Cells[3,StringGrid1.RowCount] := CurrToStr(preco*quantidade);
  totalCompras := totalCompras + (preco*quantidade);
  lblTotal.Caption := 'Total da Venda: ' + Format('%m',[totalCompras]);
  StringGrid1.RowCount := StringGrid1.RowCount + 1;

end;


procedure TForm5.Button2Click(Sender: TObject);
begin
  reordenarStringGrid(StringGrid1, lblTotal);
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0,0] := 'NOME';
  StringGrid1.Cells[1,0] := 'QUANTIDADE';
  StringGrid1.Cells[2,0] := 'PREÇO';
  StringGrid1.Cells[3,0] := 'VALOR (R$)';

end;



procedure TForm5.reordenarStringGrid(strgrid: TStringGrid; totalLbl: TLabel);
var
  posToRemove:Integer;
  I: Integer;
  novoStringGrid: TStringGrid;
begin
  novoStringGrid := TStringGrid.Create(self);
  novoStringGrid.RowCount := 0;
  novoStringGrid.ColCount := StringGrid1.ColCount;
  novoStringGrid.Enabled := false;
  novoStringGrid.Visible := false;

  posToRemove := strgrid.Row;
  totalCompras := totalCompras - StrToCurr(strgrid.Cells[3,posToRemove]);
  for I := 1 to strgrid.RowCount do
    begin
      if I <> posToRemove then
        begin
          novoStringGrid.Cells[0,novoStringGrid.RowCount] := strgrid.Cells[0, I];
          novoStringGrid.Cells[1,novoStringGrid.RowCount] := strgrid.Cells[1, I];
          novoStringGrid.Cells[2,novoStringGrid.RowCount] := strgrid.Cells[2, I];
          novoStringGrid.Cells[3,novoStringGrid.RowCount] := strgrid.Cells[3, I];
          novoStringGrid.RowCount := novoStringGrid.RowCount + 1;
        end;
    end;

    strgrid.RowCount := strgrid.RowCount - 1;
    for I := 1 to novoStringGrid.RowCount do
      begin
          strgrid.Cells[0,I] := novoStringGrid.Cells[0, I];
          strgrid.Cells[1,I] := novoStringGrid.Cells[1, I];
          strgrid.Cells[2,I] := novoStringGrid.Cells[2, I];
          strgrid.Cells[3,I] := novoStringGrid.Cells[3, I];
     end;

    totalLbl.Caption := 'Total da Venda: ' + Format('%m',[totalCompras]);
    novoStringGrid.Free;

  end;


end.
