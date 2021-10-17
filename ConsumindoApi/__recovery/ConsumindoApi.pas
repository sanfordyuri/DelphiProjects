unit ConsumindoApi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.JSON, System.Generics.Collections;

type
  TForm1 = class(TForm)
    cnpjEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    getButton: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    clearButton: TButton;
    procedure getButtonClick(Sender: TObject);
    procedure clearButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
const
  API_URL : String = 'https://www.receitaws.com.br/v1/cnpj/';

implementation

{$R *.dfm}

procedure TForm1.clearButtonClick(Sender: TObject);
begin
  Memo1.Clear;
  cnpjEdit.Text := '';
end;

procedure TForm1.getButtonClick(Sender: TObject);
  var
    //arrayPed: TJSONArray;
    jsonOb : TJSONObject;
    json: String;
    i: Integer;
begin
  Memo1.Clear;
  RESTClient1.BaseURL := API_URL + cnpjEdit.Text;
  RESTRequest1.Execute;
  json := RESTRequest1.Response.JSONText;
  jsonOb := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONObject;
  //arrayPed := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONArray;
  Memo1.Lines.Add('RAZÃO SOCIAL: ' + jsonOb.GetValue<String>('nome'));
  Memo1.Lines.Add(' ');
  Memo1.Lines.Add('=== ENDEREÇO ===');
  Memo1.Lines.Add('BAIRRO: ' + jsonOb.GetValue<String>('bairro'));
  Memo1.Lines.Add('LONGRADOURO: ' + jsonOb.GetValue<String>('logradouro') + ' Nº ' + jsonOb.GetValue<String>('numero'));
  Memo1.Lines.Add('CEP: ' + jsonOb.GetValue<String>('cep'));
  Memo1.Lines.Add('MUNICIPIO: ' + jsonOb.GetValue<String>('municipio'));
  Memo1.Lines.Add(' ');
  Memo1.Lines.Add('=== INFORMAÇÕES RELEVANTES ===');
  Memo1.Lines.Add('CAPITAL SOCIAL: ' + jsonOb.GetValue<String>('capital_social'));
  Memo1.Lines.Add('PORTE: ' + jsonOb.GetValue<String>('porte'));
  Memo1.Lines.Add('SITUAÇÃO: ' + jsonOb.GetValue<String>('situacao'));
  Memo1.Lines.Add('ATIVIDADE: ' + jsonOb.GetValue<TJSONArray>('atividade_principal').Items[0].GetValue<String>('text'));
  Memo1.Lines.Add(' ');
  Memo1.Lines.Add('=== CONTATO ===');
  Memo1.Lines.Add('EMAIL: ' + jsonOb.GetValue<String>('email'));
  Memo1.Lines.Add('TELEFONE: ' + jsonOb.GetValue<String>('telefone'));
  Memo1.Lines.Add(' ');
  Memo1.Lines.Add('=== ADMINISTRAÇÃO ===');
  for i := 0 to jsonOb.GetValue<TJSONArray>('qsa').Count-1 do
    begin
    Memo1.Lines.Add(jsonOb.GetValue<TJSONArray>('qsa').Items[i].GetValue<String>('qual') + ' - ' + jsonOb.GetValue<TJSONArray>('qsa').Items[i].GetValue<String>('nome'));
    end;

end;

end.
