unit HoraExtraListClass;

interface
uses Generics.Collections, HoraExtraClass, sysutils;

type
  THoraExtraList = class(TObjectList<THoraExtra>)
    private
      FTotalHorasExtraCem: Double;
      FTotalHorasExtraCinquenta: Double;
      FTotalValorAPagar: Currency;
    public
      property TotalHorasExtraCem: Double read FTotalHorasExtraCem write FTotalHorasExtraCem;
      property TotalHorasExtraCinquenta: Double read FTotalHorasExtraCinquenta write FTotalHorasExtraCinquenta;
      property TotalValorAPagar: Currency read FTotalValorAPagar write FTotalValorAPagar;
      constructor Create;
      destructor Destroy;override;
      procedure PuxarValores;
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

procedure THoraExtraList.PuxarValores;
var
  HoraExtraRef: THoraExtra;
  TotalAPagar: Currency;
  TotalCinquenta: Double;
  TotalCem: Double;
begin
  TotalAPagar := 0.0;
  TotalCinquenta := 0.0;
  TotalCem := 0.0;
  for HoraExtraRef in Self do
    begin
      if HoraExtraRef.DomingoOuFeriado = 0 then
        TotalCinquenta := TotalCinquenta + HoraExtraRef.TempoEmMin
      else
        TotalCem := TotalCem + HoraExtraRef.TempoEmMin;

      TotalAPagar := TotalAPagar + HoraExtraRef.valorQueSeraPago;
    end;
  Self.TotalHorasExtraCem := StrToFloat(FormatFloat('#,##0.00', (TotalCem/60)));
  Self.TotalHorasExtraCinquenta := StrToFloat(FormatFloat('#,##0.00', (TotalCinquenta/60)));
  Self.TotalValorAPagar := TotalAPagar;

end;

end.
