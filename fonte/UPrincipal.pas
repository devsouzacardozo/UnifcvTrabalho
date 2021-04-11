unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnMediaAluno: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure btnMediaAlunoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UMediaAlunos, UCalculadora;

{$R *.dfm}

procedure TForm1.btnMediaAlunoClick(Sender: TObject);
begin
   frmMediaAlunos.ShowModal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  frmCalculadora.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   close;
end;

end.
