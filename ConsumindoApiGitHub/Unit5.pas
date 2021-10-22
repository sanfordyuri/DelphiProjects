unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, System.JSON;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    userEdit: TEdit;
    label2: TLabel;
    buscarButton: TButton;
    procedure buscarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
uses
  Unit1;

{$R *.dfm}

procedure TForm5.buscarButtonClick(Sender: TObject);

begin
  if userEdit.Text <> '' then
    begin
      Unit1.Form1.Show;
      Unit5.Form5.Hide;
    end
  else
    begin
      ShowMessage('Informe um usuário');
    end;
end;

end.
