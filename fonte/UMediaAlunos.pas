unit UMediaAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls;

type
  TfrmMediaAlunos = class(TForm)
    edtNomeAluno: TEdit;
    edtNota1: TEdit;
    edtNota2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnFechar: TButton;
    btnGravarAluno: TButton;
    btnLimpar: TButton;
    btnLerAluno: TButton;
    Memo1: TMemo;
    procedure edtNota1KeyPress(Sender: TObject; var Key: Char);
    procedure btnLimparClick(Sender: TObject);
    procedure btnLerAlunoClick(Sender: TObject);
    procedure btnGravarAlunoClick(Sender: TObject);
    procedure edtNota2KeyPress(Sender: TObject; var Key: Char);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMediaAlunos: TfrmMediaAlunos;

implementation

{$R *.dfm}

type
  rgAluno = record
    nome: string[35];
    nota1: real;
    nota2: real;
 end;

var
   aluno: array of rgAluno;
   n : integer = 0;  // tamanho do vetor
   x : rgAluno;

   // Evento "OnKeyPress" dos Edits "1a. Nota" e "2a.Nota"
   // Verificando e aceitando somente valores num?ricos do tipo real

procedure TfrmMediaAlunos.edtNota1KeyPress(Sender: TObject; var Key: Char);
begin
   if (Key in ['.', ',']) then
   if (pos(',', (Sender as TEdit).Text) = 0) then Key := ','
     else Key := #7 else if (not(Key in ['0'..'9', #8]))
   then Key := #7;
   // Bot?o "Gravar Aluno"
end;

procedure TfrmMediaAlunos.btnLimparClick(Sender: TObject);
begin
  edtNomeAluno.Clear;
  edtNota1.Clear;
  edtNota2.Clear;
end;


procedure TfrmMediaAlunos.btnLerAlunoClick(Sender: TObject);
 var
     nreg, i : Integer;
     media: real;
begin
   Memo1.Lines.Add('');
   nreg := 0;
   for i := 0 to n - 1 do
     begin
       x :=   aluno[i];
       nreg := nreg + 1;
      {rocessando e exibindo os dados recuperados}

   media := (x.nota1 + x.nota2) / 2;
   Memo1.Lines.Add('Registro Nro.: ' + IntToStr(nreg));
   Memo1.Lines.Add('Nome do Aluno: ' + x.nome);
   Memo1.Lines.Add('1a. nota.....: ' + Format(' %.2f', [x.nota1]));
   Memo1.Lines.Add('2a. nota.....: ' + Format(' %.2f', [x.nota2]));
   Memo1.Lines.Add('M?dia........: ' + Format(' %.2f', [media]));
   if (media >= 6.0) then
      Memo1.Lines.Add('Situa??o.....: Aprovado')
   else Memo1.Lines.Add('Situa??o.....: Reprovado');
   Memo1.Lines.Add('');
  end;
end;

procedure TfrmMediaAlunos.btnGravarAlunoClick(Sender: TObject);
begin { verifica se todos os campos foram informados }
   if ((edtNomeAluno.Text <> '') and
       (edtNota1.Text <> '') and
       (edtNota2.Text <> '')) then
   begin
     x.nome := edtNomeAluno.Text;
     x.nota1 := StrToFloat(edtNota1.Text);
     x.nota2 := StrToFloat(edtNota2.Text);
     n := n + 1;
	   // redimensiona o vetor "aluno"aumentando umaposi??o
	   // para adicionar o novo aluno no final do conjunto
     SetLength(aluno, n);
     aluno[n-1] := x;

	   Memo1.Lines.Add(x.nome+ ', gravado com sucesso.');
    end;
end;


procedure TfrmMediaAlunos.edtNota2KeyPress(Sender: TObject; var Key: Char);
begin
   if (Key in ['.', ',']) then
   if (pos(',', (Sender as TEdit).Text) = 0) then Key := ','
     else Key := #7 else if (not(Key in ['0'..'9', #8]))
   then Key := #7;
end;

procedure TfrmMediaAlunos.btnFecharClick(Sender: TObject);
begin
  close;
end;

end.
