unit Autenticacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit5;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    usuarioEdit: TEdit;
    acessarButton: TButton;
    procedure acessarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.acessarButtonClick(Sender: TObject);
begin
  if usuarioEdit.Text <> '' then
    begin
      Unit5.nomeDoTitular := usuarioEdit.Text;
      Unit5.Form5.Show;
      Autenticacao.Form6.Hide;
    end
  else
    ShowMessage('Insira um usu?rio!');
end;

end.
