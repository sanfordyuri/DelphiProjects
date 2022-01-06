unit HoraExtraListClass;

interface
uses Generics.Collections, HoraExtraClass, sysutils;

type
  THoraExtraList = class(TObjectList<THoraExtra>)
    private
    public
      constructor Create;
      destructor Destroy;override;
      function TotalHorasExtrasCinquenta:Double;
      function TotalHorasExtrasCem:Double;
      function TotalValorAPagar:Currency;
  end;

implementation

{ THoraExtraList }

constructor THoraExtraList.Create;
begin
  inherited;

end;

destructor THoraExtraList.Destroy;
begin

  inherited;
end;

function THoraExtraList.TotalHorasExtrasCem: Double;
var
  HoraExtraRef: THoraExtra;
  Total: Double;
begin
  Total := 0.0;
  for HoraExtraRef in Self do
    begin
      if HoraExtraRef.DomingoOuFeriado = 1 then
        Total := Total + HoraExtraRef.TempoEmMin;
    end;
  Result := StrToFloat(FormatFloat('#,##0.00', (Total/60)));
end;

function THoraExtraList.TotalHorasExtrasCinquenta: Double;
var
  HoraExtraRef: THoraExtra;
  Total: Double;
begin
  Total := 0.0;
  for HoraExtraRef in Self do
    begin
      if HoraExtraRef.DomingoOuFeriado = 0 then
        Total := Total + HoraExtraRef.TempoEmMin;
    end;
  Result := StrToFloat(FormatFloat('#,##0.00', (Total/60)));
end;

function THoraExtraList.TotalValorAPagar: Currency;
var
  HoraExtraRef: THoraExtra;
  Total: Currency;
begin
  Total := 0.0;
  for HoraExtraRef in Self do
    begin
      Total := Total + HoraExtraRef.valorQueSeraPago;
    end;
  Result := Total;
end;

end.