unit Desafio01;

interface

{
  Tabela de IRRF:
  at? R$1.903,98: isen??o;
  1? faixa: 7,5% para bases de R$ 1.903,99 a R$ 2.826,65;
  2? faixa: 15% para bases de R$ 2.826,66 a R$ 3.751,05;
  3? faixa: 22,5% para bases de R$ 3.751,06 a R$ 4.664,68;
  4? faixa: 27,5% para bases a partir de R$ 4.664,69.

  Dedu??es:
  1? faixa: R$ 142,80;
  2? faixa: R$ 354,80;
  3? faixa: R$ 636,13;
  4? faixa: R$ 869,36.

  Exemplo:
  Sal?rio base: R$ 2.500,00
  Faixa 1: 7,5% = 174,97
  Dedu??o faixa 1 = 142,80
  Resultado: 174,97 - 142,80 = 32,17

  Obs (base real):
  Base: R$ 3.000,00 ? R$ 277,40 (INSS) ? R$ 200,00 (Pens?o aliment?cia) ? R$ 189,59 (dependente) = R$ 2.333,01
}

type

  TDesafio01 = class(TObject)
    private
    public
      constructor Create;
      destructor Destroy; override;
      function calcularIrrf(SalarioBase: Currency): Currency;
  end;

implementation

{ TFuncoes }

function TDesafio01.calcularIrrf(SalarioBase: Currency): Currency;
begin
  if (SalarioBase <= 1903.98) then
    Result := 0.0
  else if (SalarioBase > 1903.98) and (SalarioBase <= 2826.65) then
    Result := (SalarioBase * 0.075) - 142.80
  else if (SalarioBase > 2826.65) and (SalarioBase <= 3751.05) then
    Result := (SalarioBase * 0.15) - 354.80
  else if (SalarioBase > 3751.05) and (SalarioBase <= 4664.68) then
    Result := (SalarioBase * 0.225) - 636.13
  else if (SalarioBase > 4664.68) then
    Result := (4664.69 * 0.275) - 869.36;
end;

constructor TDesafio01.Create;
begin

end;

destructor TDesafio01.Destroy;
begin

  inherited;
end;

end.
