unit UnitFolha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.Mask, Empregado, EdicaoEmpregado;

type
  TForm6 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    edtNome: TEdit;
    edtCod: TEdit;
    Button2: TButton;
    Button3: TButton;
    EdtSalarioB: TEdit;
    Label4: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function removeElement(array_:TArray<TEmpregado>; identificador: Integer):TArray<TEmpregado>;
  private
    { Private declarations }
  public
    procedure atualizarSg;
    { Public declarations }
  end;

var
  Form6: TForm6;
  listaDeEmpregados: TArray<TEmpregado>;
  CodigoEmpregado:Integer;

implementation

{$R *.dfm}
function TForm6.removeElement(array_: TArray<TEmpregado>;
  identificador: Integer): TArray<TEmpregado>;

var
  I:Integer;
  novaArray: TArray<TEmpregado>;
begin
  for I := 0 to (Length(array_)-1) do
    begin
      if array_[I].IdentificadorDoEmpregado <> identificador then
        begin
          SetLength(novaArray, Length(novaArray) + 1);
          novaArray[Length(novaArray) -1] := array_[I];
        end;
    end;

    Result := novaArray;

end;


procedure TForm6.Button1Click(Sender: TObject);
var
  I:Integer;

begin
  CodigoEmpregado := StrToInt(edtCod.Text);
  EdicaoEmpregado.Form7.Show;
  for I := 0 to (Length(listaDeEmpregados) - 1) do
    begin
      if listaDeEmpregados[I].IdentificadorDoEmpregado = CodigoEmpregado then
        begin
          edtNome.Text := listaDeEmpregados[I].NomeDoEmpregado;
          Exit;
        end;
    end;
end;


procedure TForm6.Button2Click(Sender: TObject);
var
  posToRemove:Integer;
  I: Integer;
  novoStringGrid: TStringGrid;
  identificador: Integer;
begin

  identificador := StrToInt(StringGrid1.Cells[0, StringGrid1.Row]);
  listaDeEmpregados := removeElement(listaDeEmpregados, identificador);
  StringGrid1.RowCount := StringGrid1.RowCount - 1;
  atualizarSg;

end;

procedure TForm6.Button3Click(Sender: TObject);
var
  novoEmpregado: TEmpregado;
begin
   novoEmpregado := TEmpregado.Create(StrToInt(edtCod.Text), edtNome.Text, StrToCurr(EdtSalarioB.Text), 1000, 100, 100, 100, 0);
   SetLength(listaDeEmpregados, (Length(listaDeEmpregados) + 1));
   listaDeEmpregados[Length(listaDeEmpregados)-1] := novoEmpregado;
   atualizarSg;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I:Integer;
begin
  for I := 0 to (Length(listaDeEmpregados) - 1) do
    begin
      listaDeEmpregados[I].Free;
    end;
end;

procedure TForm6.atualizarSg;
var
  I: Integer;
begin
  StringGrid1.RowCount := Length(listaDeEmpregados) + 1;
  for I := 0 to (Length(listaDeEmpregados) - 1) do
  begin
    StringGrid1.Cells[0, I + 1] := IntToStr(listaDeEmpregados[I].IdentificadorDoEmpregado);
    StringGrid1.Cells[1, I + 1] := listaDeEmpregados[I].NomeDoEmpregado;
    StringGrid1.Cells[2, I + 1] := Format('%m', [listaDeEmpregados[I].SalarioDoEmpregado]);
  end;
end;

procedure TForm6.FormCreate(Sender: TObject);
var
  emp1: TEmpregado;
  emp2: TEmpregado;
  emp3: TEmpregado;
  emp4: TEmpregado;

begin
  StringGrid1.Cells[0,0] := 'Cód Emp';
  StringGrid1.Cells[1,0] := 'Nome do Empregado';
  StringGrid1.Cells[2,0] := 'Salário Bruto';
  StringGrid1.Cells[3,0] := 'Bônus';
  StringGrid1.Cells[4,0] := 'INSS';
  StringGrid1.Cells[5,0] := 'VT';
  StringGrid1.Cells[6,0] := 'VR';
  StringGrid1.Cells[7,0] := 'VALE';
  StringGrid1.Cells[8,0] := 'Salário Líquido';

  emp1 := TEmpregado.Create(100, 'JOAO', 15000, 1000, 100, 100, 100, 0);
  emp2 := TEmpregado.Create(200, 'CLARA', 25000, 1000, 100, 100, 100, 0);
  emp3 := TEmpregado.Create(300, 'JAMES', 55000, 1000, 100, 100, 100, 0);
  emp4 := TEmpregado.Create(400, 'KURT', 35000, 1000, 100, 100, 100, 0);

  SetLength(listaDeEmpregados, 4);
  listaDeEmpregados[0] := emp1;
  listaDeEmpregados[1] := emp2;
  listaDeEmpregados[2] := emp3;
  listaDeEmpregados[3] := emp4;
  atualizarSg;




end;


end.
