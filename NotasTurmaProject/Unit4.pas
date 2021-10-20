unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  RAlunos = record
    nome: string;
    nota: Double;
  end;
  TForm4 = class(TForm)
    label1: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  arrayAlunos: array of RAlunos;
  aluno:RAlunos;
  I:Integer;
  alunoComMaiorNota:String;
  alunoComMenorNota:String;
  notaReferencia:Double;
  notaReferenciaMenor:Double;
  somaDasNotas:Double;
  mediaNotas:Double;
begin
  SetLength(arrayAlunos, 10);

  for I := 0 to Length(arrayAlunos)-1 do
    begin
      aluno.nome := 'Aluno'+I.ToString;
      aluno.nota := Random(10);
      arrayAlunos[i] := aluno;
    end;
    Memo1.Clear;
  somaDasNotas := 0.0;
  notaReferencia := 0.0;
  notaReferenciaMenor := arrayAlunos[0].nota;
  for aluno in arrayAlunos do
    begin
      somaDasNotas := somaDasNotas + aluno.nota;
      if aluno.nota <= notaReferenciaMenor then
        begin
          alunoComMenorNota := aluno.nome;
          notaReferenciaMenor := aluno.nota;
        end;
      if aluno.nota >= notaReferencia then
        begin
          alunoComMaiorNota := aluno.nome;
          notaReferencia := aluno.nota;
        end;
      Memo1.Lines.Add(aluno.nome + ' - ' + aluno.nota.ToString);
    end;
  mediaNotas := somaDasNotas / 10.0;
  Memo1.Lines.Add(' ');
  Memo1.Lines.Add(' Aluno com melhor nota: ' + alunoComMaiorNota);
  Memo1.Lines.Add(' Aluno com pior nota: ' + alunoComMenorNota);
  Memo1.Lines.Add(' Média das notas: ' + mediaNotas.ToString);
end;

end.
