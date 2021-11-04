unit EdicaoEmpregado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Empregado;

type
  TForm7 = class(TForm)
    Label3: TLabel;
    edtNome: TEdit;
    Label1: TLabel;
    EdtSalario: TEdit;
    Label2: TLabel;
    EdtBonus: TEdit;
    Label4: TLabel;
    Button1: TButton;
    procedure QuandoAbrir(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses
  UnitFolha;
{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
  identificador: Integer;
  I: Integer;
begin
  identificador := UnitFolha.CodigoEmpregado;
  for I := 0 to (Length(UnitFolha.listaDeEmpregados) - 1) do
    begin
      if UnitFolha.listaDeEmpregados[I].IdentificadorDoEmpregado = identificador then
        begin
          UnitFolha.listaDeEmpregados[I].NomeDoEmpregado := edtNome.Text;
          UnitFolha.listaDeEmpregados[I].SalarioDoEmpregado := StrToCurr(EdtSalario.Text);
          UnitFolha.listaDeEmpregados[I].BonusDoEmpregado := StrToCurr(EdtBonus.Text);
          ShowMessage('Edição concluída.');
          Self.Close;
          Exit;
        end;
    end;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UnitFolha.Form6.atualizarSg;
end;

procedure TForm7.QuandoAbrir(Sender: TObject);
var
  identificador: Integer;
  I: Integer;
begin
  identificador := UnitFolha.CodigoEmpregado;
  for I := 0 to (Length(UnitFolha.listaDeEmpregados) - 1) do
    begin
      if UnitFolha.listaDeEmpregados[I].IdentificadorDoEmpregado = identificador then
        begin
          edtNome.Text := UnitFolha.listaDeEmpregados[I].NomeDoEmpregado;
          EdtSalario.Text := CurrToStr(UnitFolha.listaDeEmpregados[I].SalarioDoEmpregado);
          EdtBonus.Text := CurrToStr(UnitFolha.listaDeEmpregados[I].BonusDoEmpregado);
          Exit;
        end;
    end;
end;

end.
