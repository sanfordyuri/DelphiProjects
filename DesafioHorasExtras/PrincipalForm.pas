unit PrincipalForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, HoraExtraClass, Generics.Collections, TimeSpan,
  HoraExtraListClass ;
type
  TPrincipal = class(TForm)
    LblCodigo: TLabel;
    EdtCodigo: TEdit;
    EdtData: TMaskEdit;
    LblData: TLabel;
    RadioGroup: TRadioGroup;
    EdtHrsExtras: TMaskEdit;
    LblHorasExtras: TLabel;
    BtnProcessar: TButton;
    MemoLog: TMemo;
    LblLog: TLabel;
    BtnAdd: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;
  HoraExtra: THoraExtra;
  BancoDeHoras: TDictionary<Integer, THoraExtraList>;
  TimeSpan: TTimeSpan;

implementation

{$R *.dfm}

procedure TPrincipal.BtnAddClick(Sender: TObject);
var
  Codigo:Integer;
  Data:String;
  DomingoOuFeriado:Integer;
  TempoEmMin:Double;
  ListaHorasExtras: THoraExtraList;
begin
  ListaHorasExtras := THoraExtraList.Create;
  Codigo := StrToInt(EdtCodigo.Text);
  Data := EdtData.Text;
  DomingoOuFeriado := RadioGroup.ItemIndex;
  TimeSpan := System.TimeSpan.TTimeSpan.Parse(TimeToStr(StrToTime(EdtHrsExtras.Text)));
  TempoEmMin := (TimeSpan.TotalSeconds/60);
  try
    HoraExtra := THoraExtra.Create(Codigo, Data, TempoEmMin, DomingoOuFeriado);
    if not BancoDeHoras.ContainsKey(Codigo) then
      BancoDeHoras.Add(Codigo, ListaHorasExtras);

    BancoDeHoras.Items[Codigo].Add(HoraExtra);

    ShowMessage('Adicionado com sucesso.');
  Except
    HoraExtra.Free;
    ListaHorasExtras.Free;
  end;
end;

procedure TPrincipal.BtnProcessarClick(Sender: TObject);
var
  ChaveCodigo: Integer;
  HoraExtraRef: THoraExtra;
begin
  MemoLog.Clear;
  for ChaveCodigo in BancoDeHoras.Keys do
    begin
      BancoDeHoras.Items[ChaveCodigo].PuxarValores;
      MemoLog.Lines.Add('Funcion?rio = ' + ChaveCodigo.ToString);
      MemoLog.Lines.Add(' Total de 50% = ' + BancoDeHoras.Items[ChaveCodigo].TotalHorasExtraCinquenta.ToString + ' Hrs');
      MemoLog.Lines.Add(' Total de 100% = ' + BancoDeHoras.Items[ChaveCodigo].TotalHorasExtraCem.toString + ' Hrs');
      MemoLog.Lines.Add(' Total a ser Pago R$ ' + CurrToStr(BancoDeHoras.Items[ChaveCodigo].TotalValorAPagar));
      for HoraExtraRef in BancoDeHoras.Items[ChaveCodigo] do
        begin
          if HoraExtraRef.DomingoOuFeriado = 1 then
            MemoLog.Lines.Add(' (100%) Valor: R$ ' + CurrToStr(HoraExtraRef.valorQueSeraPago))
          else
            MemoLog.Lines.Add(' (50%) Valor: R$ ' + CurrToStr(HoraExtraRef.valorQueSeraPago));
        end;
    end;
end;

procedure TPrincipal.FormCreate(Sender: TObject);
begin
  BancoDeHoras := TDictionary<Integer, THoraExtraList>.Create;
end;

procedure TPrincipal.FormDestroy(Sender: TObject);
begin
  BancoDeHoras.Free;
  HoraExtra.Free;
end;

end.
