unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  TForm1 = class(TForm)
    valorEdit: TEdit;
    calcularButton: TButton;
    numeroDeParcelasEdit: TEdit;
    Label1: TLabel;
    valorLabel: TLabel;
    Label2: TLabel;
    Memo: TMemo;
    lpButton: TButton;
    procedure calcularButtonClick(Sender: TObject);
    procedure lpButtonClick(Sender: TObject);
  private
    procedure limpaCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  valor: Currency;
  parcelas: Integer;
  valorDaParcela: Currency;
  valorConvertidoParaString: String;
  parcelaString: String;
  diferenca: Currency;
  diferencaConvertidoParaString: String;
const
  MSG_MEMO: String = 'Nenhum valor de parcela';
  EMPTY_STR: String = '';
  UMA_PARCELA: String = '1x ';
  PARCELA: String = 'x ';
  MENSAGEM_CAMPOS_VAZIOS: String = 'Existem campos vazios.';
  ZERO = 0;
  ONE = 1;
  LESS_TWO = -2;
  FORMAT_MONEY = '%m';
  EMPTY_FIELD = 'Verifique os campos em branco, por gentileza.';
implementation
{$R *.dfm}


function verificaSeTaVazio(campo: String):Boolean;
begin
  if campo.Equals(EMPTY_STR) then
    Result := true
  else
    Result := false
end;

procedure TForm1.calcularButtonClick(Sender: TObject);
var
  I: Integer;
  valorConvertidoParaString: String;
  parcelaString: String;
  diferenca: Currency;
  diferencaConvertidoParaString: String;
begin
  if ((verificaSeTaVazio(valorEdit.Text)) or (verificaSeTaVazio(numeroDeParcelasEdit.Text))) then
  begin
      ShowMessage(EMPTY_FIELD);
  end
  else
  begin
    valor := StrToFloat(valorEdit.text);
    parcelas := StrToInt(numeroDeParcelasEdit.Text);
    valorDaParcela := Trunc((valor / parcelas));
    valorConvertidoParaString := Format(FORMAT_MONEY, [valorDaParcela]);
    parcelaString := IntToStr(parcelas);
    Memo.Clear;
    if (parcelas * valorDaParcela) = valor then
      begin
        Memo.Lines.Add(parcelaString + PARCELA + valorConvertidoParaString);
      end
    else
      begin
        valorDaParcela := Math.Roundto(valor/parcelas, LESS_TWO);
        diferenca := Math.Roundto(valor - (valorDaParcela * (parcelas-ONE)), LESS_TWO);
        diferencaConvertidoParaString := Format(FORMAT_MONEY, [diferenca]);
        valorConvertidoParaString := Format(FORMAT_MONEY, [valorDaParcela]);
        Memo.Lines.Add((parcelas-ONE).ToString + PARCELA + valorConvertidoParaString);
        Memo.Lines.Add(UMA_PARCELA + diferencaConvertidoParaString);
      end;
  end;

end;

procedure TForm1.lpButtonClick(Sender: TObject);
begin
  limpaCampos;
end;

procedure TForm1.limpaCampos;
begin
  valorEdit.Text := EMPTY_STR;
  numeroDeParcelasEdit.Text := EMPTY_STR;
  Memo.Clear;
  Memo.Lines.Add(MSG_MEMO);
end;

end.

