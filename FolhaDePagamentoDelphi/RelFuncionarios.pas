unit RelFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, Conexao;

type
  TRelFunCfg = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    QryLista: TFDQuery;
    DtsLista: TDataSource;
    rlblTitulo: TRLLabel;
    rlblCodigo: TRLLabel;
    rlblNome: TRLLabel;
    rlblNascimento: TRLLabel;
    rlblCargo: TRLLabel;
    rlblContato: TRLLabel;
    rlbldbCodigo: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    rlblAss: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    procedure configurarCampos(CargoCod: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelFunCfg: TRelFunCfg;

implementation

{$R *.dfm}

{ TRelFunCfg }



{ TRelFunCfg }

procedure TRelFunCfg.configurarCampos(CargoCod: Integer);
var
  cod: Integer;
begin
  cod := CargoCod;
  QryLista.Close;
  QryLista.SQL.Text := 'SELECT tf.CODIGO , tf.NOME, tf.NASCIMENTO, tc.NOME, tf.CONTATO' +
  ' FROM TB_FUNCIONARIO tf' +
  ' INNER JOIN TB_CARGO tc ON (tc.CODIGO = tf.CARGO)' +
  ' WHERE tf.CARGO = :CARGO';
  QryLista.ParamByName('CARGO').AsInteger := cod;
  QryLista.Open;
end;

end.
