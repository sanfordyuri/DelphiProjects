unit CalcInss;

interface

type
  TInss = class
    class function Calc(Salario: Currency): Currency;
  end;

implementation

uses
  SysUtils;

{ TInss }

{

  RELATIVO A 2021

}

class function TInss.Calc(Salario: Currency): Currency;
begin
  Result := 0;
  if Salario <= 0 then
    raise Exception.Create('Salário deve ser maior que zero.');

  if Salario <= 1100 then
    Result := Salario * 0.075
  else if (Salario > 1100) and (Salario <= 2203.48) then
    Result := Salario * 0.09
  else if (Salario > 2203.48) and (Salario <= 3305.22) then
    Result := Salario * 0.12
  else if (Salario > 3305.22) and (Salario <= 6433.57) then
    Result := Salario * 0.14
  else if (Salario > 6433.57) then
    Result := 6433.57 * 0.14;
end;

end.
