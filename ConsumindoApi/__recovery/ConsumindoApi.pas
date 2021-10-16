unit ConsumindoApi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

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
    procedure getButtonClick(Sender: TObject);
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

procedure TForm1.getButtonClick(Sender: TObject);
begin
  Memo1.Clear;
  RESTClient1.BaseURL := API_URL + cnpjEdit.Text;
  RESTRequest1.Execute;
  Memo1.Lines.Add(RESTRequest1.Response.JSONText);
end;

end.
