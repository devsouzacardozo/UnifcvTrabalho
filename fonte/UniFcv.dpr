program UniFcv;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  UMediaAlunos in 'UMediaAlunos.pas' {frmMediaAlunos},
  UList in 'UList.pas' {frmLsit},
  UCalculadora in 'UCalculadora.pas' {frmCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmMediaAlunos, frmMediaAlunos);
  Application.CreateForm(TfrmLsit, frmLsit);
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;
end.
