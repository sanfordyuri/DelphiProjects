unit Unit5;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MinhasClasses;

type
    TForm5 = class(TForm)
        Label1: TLabel;
        Label2: TLabel;
        saldoLabel: TLabel;
        valorEdit: TEdit;
        Label3: TLabel;
        depositarButton: TButton;
        sacarButton: TButton;
    Label4: TLabel;
    nomeDoTitularLabel: TLabel;
    contaCP: TComboBox;
    Label5: TLabel;
    saldoPoupancaLabel: TLabel;
    procedure FormShow(Sender: TObject);
    procedure depositarButtonClick(Sender: TObject);
    procedure sacarButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    ContaCorrente: TContaCorrente;
    ContaPoupanca: TContaPoupanca;
    Form5: TForm5;
    nomeDoTitular:String;

implementation

{$R *.dfm}

procedure TForm5.depositarButtonClick(Sender: TObject);
var
  valor:Currency;
begin
  valor := StrToCurr(valorEdit.Text);
  if contaCP.ItemIndex = -1 then
    begin
      ShowMessage('Informe um tipo de conta.');
    end
  else if contaCP.ItemIndex = 0 then
    begin
      ContaCorrente.Depositar(valor);
      saldoLabel.Caption := Format('%m', [ContaCorrente.Consultar]);
    end
  else if contaCP.ItemIndex = 1 then
    begin
      ContaPoupanca.Depositar(valor);
      saldoPoupancaLabel.Caption := Format('%m', [ContaPoupanca.Consultar]);
    end;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ContaCorrente.Free;
  ContaPoupanca.Free;
end;

procedure TForm5.FormShow(Sender: TObject);

begin
    ContaCorrente := TContaCorrente.Create;
    ContaPoupanca := TContaPoupanca.Create;
    ContaCorrente.NomeDoTitular := nomeDoTitular;
    ContaPoupanca.NomeDoTitular := nomeDoTitular;
    nomeDoTitularLabel.Caption := ContaCorrente.NomeDoTitular;
    ContaCorrente.Depositar(10000.0);
    ContaPoupanca.Depositar(20000.0);
    saldoLabel.Caption := Format('%m', [ContaCorrente.Consultar]);
    saldoPoupancaLabel.Caption := Format('%m', [ContaPoupanca.Consultar]);
end;

procedure TForm5.sacarButtonClick(Sender: TObject);
var
  valor:Currency;
begin
  valor := StrToCurr(valorEdit.Text);
  if contaCP.ItemIndex = 0 then
    begin
      ContaCorrente.Sacar(valor);
      saldoLabel.Caption := Format('%m', [ContaCorrente.Consultar]);
    end
  else if contaCP.ItemIndex = 1 then
    begin
      ContaPoupanca.Sacar(valor);
      saldoPoupancaLabel.Caption := Format('%m', [ContaPoupanca.Consultar]);
    end;
end;

end.
