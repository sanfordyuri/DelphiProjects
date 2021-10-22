unit MinhasClasses;

interface

uses
  SysUtils, Dialogs;

type
  TConta = class
  private
    saldo: Currency;
    FNomeDoTitular: String;
  public
    property NomeDoTitular: string read FNomeDoTitular write FNomeDoTitular;
    function Sacar(valor: Currency): Currency; virtual;
    function Depositar(valor: Currency): Currency; virtual;
    function Consultar: Currency; virtual;
  end;

  TContaCorrente = class(TConta)
  public
    function Sacar(valor: Currency): Currency; override;
  end;

  TContaPoupanca = class(TConta)
  public
    function Sacar(valor: Currency): Currency; override;
    function Depositar(valor: Currency): Currency; override;
  end;

  { TConta }

  { TConta }


implementation

{ TContaCorrente }

function TContaCorrente.Sacar(valor: Currency): Currency;
begin
  if valor > Self.saldo then
   begin
     ShowMessage('Você não possui tudo isso para sacar!');
   end
  else if valor <= 1000.0 then
  begin
    Result := (Self.saldo - (0.1 * valor));
    Self.saldo := Result;
  end
  else
    ShowMessage('O limite de saque para conta corrente é de R$ 1000.00');

end;

{ TContaPoupanca }

function TContaPoupanca.Depositar(valor: Currency): Currency;
begin
  if valor > 200.0 then
    begin
      Result := Self.saldo + valor ;
      Self.saldo := Result;
    end
  else
    ShowMessage('O Valor mínimo para depósito é de R$ 200.0');
end;

function TContaPoupanca.Sacar(valor: Currency): Currency;
begin
  if valor > Self.saldo then
     begin
       ShowMessage('Você não possui tudo isso para sacar!');
     end
  else if valor <= 500.0 then
  begin
    Result := Self.saldo - (valor);
    Self.saldo := Result;
  end
  else
    ShowMessage('O limite de saque para conta poupança é de R$ 500.00');
end;

{ TConta }

function TConta.Consultar: Currency;
begin
  Result := Self.saldo;
end;

function TConta.Depositar(valor: Currency): Currency;
begin
  Result := Self.saldo + valor;
  Self.saldo := Result;
end;

function TConta.Sacar(valor: Currency): Currency;
begin
  if valor > Self.saldo then
     begin
       ShowMessage('Você não possui tudo isso para sacar!');
     end
  else
  begin
  Result := Self.saldo - valor;
  Self.saldo := Result;
  end;
end;

end.
