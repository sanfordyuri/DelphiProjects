unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.JSON, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Unit5, Vcl.StdCtrls, Vcl.ExtCtrls,GIFImg,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, pngimage;

type
  TForm1 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Label1: TLabel;
    perfilImage: TImage;
    IdHTTP1: TIdHTTP;
  procedure FormShow(Sender: TObject);
  procedure FormClose(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

procedure GetImageByUrl(URL: string; APicture: TPicture);
var
  Jpeg: TPngImage;
  Strm: TMemoryStream;
  vIdHTTP : TIdHTTP;
begin
  Screen.Cursor := crHourGlass;
  Jpeg := TPngImage.Create;
  Strm := TMemoryStream.Create;
  vIdHTTP := TIdHTTP.Create(nil);
  try
    vIdHTTP.Get(URL, Strm);
    if (Strm.Size > 0) then
    begin
      Strm.Position := 0;
      Jpeg.LoadFromStream(Strm);
      APicture.Assign(Jpeg);
    end;
  finally
    Strm.Free;
    Jpeg.Free;
    vIdHTTP.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm1.FormClose(Sender: TObject);
begin
  perfilImage.Free; //Libera da mem?ria.
  RESTRequest1.Free;
  RESTClient1.Free;
  RESTResponse1.Free;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  user:String;
  json:String;
  JsonOb:TJSONObject;
const
  URL:String='https://api.github.com/users/';
begin
  user := Unit5.Form5.userEdit.Text;
  RESTClient1.BaseURL := URL + user;
  RESTRequest1.Execute;
  json := RESTRequest1.Response.JSONText;
  jsonOb := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONObject;
  GetImageByUrl(JsonOb.GetValue<String>('avatar_url'), perfilImage.Picture);
end;

{$R *.dfm}

end.
