unit UCalculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmCalculadora = class(TForm)
    btnAdicao: TButton;
    btnDivisao: TButton;
    btnMultiplicacao: TButton;
    btnVirgula: TButton;
    btnIgual: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn0: TButton;
    btn00: TButton;
    Panel1: TPanel;        
    edtIgual: TEdit;
    lTitulo: TLabel;
    lResultado: TLabel;
    lNomeResultado: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure edtIgualKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnAdicaoClick(Sender: TObject);
    procedure btnVirgulaClick(Sender: TObject);
    procedure btnSubitracaoClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btn00Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PROCEDURE CALCULADORA (NUMERO : DOUBLE);
  end;

var
  frmCalculadora: TfrmCalculadora;

implementation

{$R *.dfm}

{ TfrmCalculadora }

procedure TfrmCalculadora.CALCULADORA(NUMERO: DOUBLE);
var
  v1, v2, v3, v4, v5, v6, v7, v9,v0 : Integer;
begin
    if btn1.Caption = '1' then
    begin
      edtIgual.Text := edtIgual.Text + btn1.Caption
    end else if btn1.Caption = '2' then
    begin
       edtIgual.Text := edtIgual.Text + btn2.Caption;
    end;


end;

procedure TfrmCalculadora.btn1Click(Sender: TObject);
begin
  edtIgual.Text := edtIgual.Text + btn1.Caption;
end;

procedure TfrmCalculadora.btn2Click(Sender: TObject);
begin
  edtIgual.Text := edtIgual.Text + btn2.Caption;
end;

procedure TfrmCalculadora.btn3Click(Sender: TObject);
begin
  edtIgual.Text := edtIgual.Text + btn3.Caption;
end;

procedure TfrmCalculadora.btn4Click(Sender: TObject);
begin
  edtIgual.Text := edtIgual.Text + btn4.Caption;
end;

procedure TfrmCalculadora.btn5Click(Sender: TObject);
begin
  edtIgual.Text := edtIgual.Text + btn5.Caption;
end;

procedure TfrmCalculadora.btn6Click(Sender: TObject);
begin
  edtIgual.Text := edtIgual.Text + btn6.Caption;
end;

procedure TfrmCalculadora.btn7Click(Sender: TObject);
begin
  edtIgual.Text := edtIgual.Text + btn7.Caption;
end;

procedure TfrmCalculadora.btn8Click(Sender: TObject);
begin
  edtIgual.Text := edtIgual.Text + btn8.Caption;;
end;

procedure TfrmCalculadora.btn9Click(Sender: TObject);
begin
   edtIgual.Text := edtIgual.Text + btn9.Caption;
end;

procedure TfrmCalculadora.edtIgualKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in ['.', ',']) then
   if (pos(',', (Sender as TEdit).Text) = 0) then Key := ','
     else Key := #7 else if (not(Key in ['0'..'9', #8]))
   then Key := #7;
end;

procedure TfrmCalculadora.FormShow(Sender: TObject);
var
  vSoma : Currency;
begin
     vSoma := 0.00;
     lResultado.caption := FormatFloat ('##0.00',vSoma);

end;

procedure TfrmCalculadora.btnAdicaoClick(Sender: TObject);
var
  vResultado : Currency;
begin
   if edtIgual.Text = '' then
   begin
     vResultado := StrToFloat(lResultado.Caption) + 0.00;
     lResultado.caption := FormatFloat ('##0.00',vResultado);
     edtIgual.Text := '';
   end else
   begin
     vResultado := StrToFloat(lResultado.Caption) + StrToFloat(edtIgual.Text);
     lResultado.caption := FormatFloat ('##0.00',vResultado);
     edtIgual.Text := '';
   end;
end;

procedure TfrmCalculadora.btnVirgulaClick(Sender: TObject);
begin
   edtIgual.Text := edtIgual.Text + btnVirgula.Caption;
end;

procedure TfrmCalculadora.btnSubitracaoClick(Sender: TObject);
var
   vResultado : Currency;
begin
  if StrToFloat(lResultado.caption) = 0.00 then
  begin
    vResultado := StrToFloat(lResultado.Caption) + StrToFloat(edtIgual.Text);
    lResultado.caption := FormatFloat ('##0.00',vResultado);
    edtIgual.Text := '';
  end else
  begin
    vResultado := StrToFloat(lResultado.Caption) - StrToFloat(edtIgual.Text);
    lResultado.caption := FormatFloat ('##0.00',vResultado);
    edtIgual.Text := '';
  end;
end;

procedure TfrmCalculadora.btnDivisaoClick(Sender: TObject);
var
   vResultado : Currency;
begin
   if StrToFloat(lResultado.caption) = 0.00 then
   begin
     vResultado := StrToFloat(lResultado.Caption) + StrToFloat(edtIgual.Text);
     lResultado.caption := FormatFloat ('##0.00',vResultado);
     edtIgual.Text := '';
   end else
   begin
     vResultado := StrToFloat(lResultado.Caption) / StrToFloat(edtIgual.Text);
     lResultado.caption := FormatFloat ('##0.00',vResultado);
     edtIgual.Text := '';
   end;

end;

procedure TfrmCalculadora.btnMultiplicacaoClick(Sender: TObject);
var
   vResultado : Currency;
begin
    if StrToFloat(lResultado.caption) = 0.00 then
   begin
     vResultado := StrToFloat(lResultado.Caption) + StrToFloat(edtIgual.Text);
     lResultado.caption := FormatFloat ('##0.00',vResultado);
     edtIgual.Text := '';
   end else
   begin
     vResultado := StrToFloat(lResultado.Caption) * StrToFloat(edtIgual.Text);
     lResultado.caption := FormatFloat ('##0.00',vResultado);
     edtIgual.Text := '';
   end;
end;

procedure TfrmCalculadora.btn00Click(Sender: TObject);
begin
  edtIgual.Text := edtIgual.Text + btn00.Caption;
end;

procedure TfrmCalculadora.btn0Click(Sender: TObject);
begin
  edtIgual.Text := edtIgual.Text + btn0.Caption;
end;

procedure TfrmCalculadora.btnIgualClick(Sender: TObject);
begin
  if StrToFloat(lResultado.caption) = 0.00 then
  begin
    edtIgual.Text := '';
  end else
  begin
    edtIgual.Text := lResultado.Caption;
  end

end;

end.
