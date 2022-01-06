unit HoraExtraClass;

interface

type
  THoraExtra = class(TObject)
    private
      FCodigoFuncionario:Integer;  //Caso precise
      FData:String;
      FTempoEmMin:Double;
      FDomingoOuFeriado:Integer;
    public
      property CodigoFuncionario:Integer read FCodigoFuncionario write FCodigoFuncionario;
      property Data:String read FData write FData;
      property TempoEmMin:Double read FTempoEmMin write FTempoEmMin;
      property DomingoOuFeriado:Integer read FDomingoOuFeriado write FDomingoOuFeriado;
      constructor Create(CodigoFuncionario:Integer;Data:String;TempoEmMin:
      Double;DomingoOuFeriado:Integer);
      destructor Destroy;override;
      function valorQueSeraPago():Currency;
    end;

implementation

{ THoraExtra }

constructor THoraExtra.Create(CodigoFuncionario: Integer; Data: String; TempoEmMin: Double; DomingoOuFeriado: Integer);
begin
  Self.CodigoFuncionario := CodigoFuncionario;
  Self.Data := Data;
  Self.TempoEmMin := TempoEmMin;
  Self.DomingoOuFeriado := DomingoOuFeriado;
end;

destructor THoraExtra.Destroy;
begin

  inherited;
end;

function THoraExtra.valorQueSeraPago: Currency;
begin
  if DomingoOuFeriado = 1 then
    begin
      Result := 40 * (TempoEmMin/60); // 20 + (100% * 20)
    end
  else if DomingoOuFeriado = 0 then
    begin
      Result := 30 * (TempoEmMin/60) // 20 + (50% * 20)
    end;
end;

end.
