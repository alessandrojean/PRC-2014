unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFrmCalculadora }

  TFrmCalculadora = class(TForm)
    btnSair: TButton;
    btnSoma: TButton;
    btnMultiplicar: TButton;
    btnSubtrair: TButton;
    btnCancelar: TButton;
    btnDividir: TButton;
    txtn1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtn2: TEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;
  n1,n2, nx:double;

implementation

{$R *.lfm}

{ TFrmCalculadora }

procedure TFrmCalculadora.btnSomaClick(Sender: TObject);
begin
  n1:=StrToInt(txtn1.Text);
  n2:=StrToInt(txtn2.Text);
  nx:=n1+n2;
  ShowMessage('A soma dos números: '+CurrToStr(nx));
end;

procedure TFrmCalculadora.btnCancelarClick(Sender: TObject);
begin
  txtn1.Text:='0';
  txtn2.Text:='0';
  txtn1.SetFocus;
end;

procedure TFrmCalculadora.btnDividirClick(Sender: TObject);
begin
  n1:=StrToInt(txtn1.Text);
  n2:=StrToInt(txtn2.Text);

  if (n1=0) or (n2=0) then
  ShowMessage('A operação não pode ser completa, pois não existe divisão por zero')
  else
  begin
  nx:=n1/n2;
  ShowMessage('A divisão dos números: '+CurrToStr(nx));
  end;

end;

procedure TFrmCalculadora.btnMultiplicarClick(Sender: TObject);
begin
  n1:=StrToInt(txtn1.Text);
  n2:=StrToInt(txtn2.Text);
  nx:=n1*n2;
  ShowMessage('O produto dos números: '+CurrToStr(nx));
end;

procedure TFrmCalculadora.btnSairClick(Sender: TObject);
begin
  FrmCalculadora.Close;
end;

procedure TFrmCalculadora.btnSubtrairClick(Sender: TObject);
begin
  n1:=StrToInt(txtn1.Text);
  n2:=StrToInt(txtn2.Text);
  nx:=n1-n2;
  ShowMessage('A subtração dos números: '+CurrToStr(nx));
end;

end.

