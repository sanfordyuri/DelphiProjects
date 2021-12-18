unit CalcIrrf;

interface

type
  TIrrf = class
    class function Calc(Salario: Currency): Currency;
  end;

implementation

uses
  SysUtils;

{ TInss }

{

  RELATIVO A 2021

}

class function TIrrf.Calc(Salario: Currency): Currency;
begin
  Result := 0;
  if Salario <= 0 then
    raise Exception.Create('Salário deve ser maior que zero.');

  if Salario <= 1903.98 then
    Result := 0
  else if (Salario > 1903.98) and (Salario <= 2826.65) then
    Result := Salario * 0.075
  else if (Salario > 2826.65) and (Salario <= 3751.05) then
    Result := Salario * 0.15
  else if (Salario > 3751.05) and (Salario <= 4664.68) then
    Result := Salario * 0.225
  else if (Salario > 4664.68) then
    Result := 4664.68 * 0.275;
end;

end.
