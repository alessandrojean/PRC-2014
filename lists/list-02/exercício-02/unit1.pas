unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TFrmNota }

  TFrmNota = class(TForm)
    BtnCancelar: TBitBtn;
    BtnExibir: TBitBtn;
    BtnSair: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbnota: TLabel;
    txtn1: TEdit;
    txtn2: TEdit;
    txtn3: TEdit;
    txtn4: TEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExibirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmNota: TFrmNota;
  n1,n2,n3,n4,nf:double;

implementation

{$R *.lfm}

{ TFrmNota }

procedure TFrmNota.BtnExibirClick(Sender: TObject);
begin
  n1:=StrToCurr(txtn1.Text);
  n2:=StrToCurr(txtn2.Text);
  n3:=StrToCurr(txtn3.Text);
  n4:=StrToCurr(txtn4.Text);

  nf:= (n1+n2+n3+n4)/4;

  if (nf>=5) then
  lbnota.Caption:=('Nota final: '+CurrToStr(nf)+' Situação: Aprovado')
  else
  lbnota.Caption:=('Nota final: '+CurrToStr(nf)+' Situação: Reprovado');
end;

procedure TFrmNota.BtnSairClick(Sender: TObject);
begin
  FrmNota.Close;
end;

procedure TFrmNota.BtnCancelarClick(Sender: TObject);
begin
  txtn1.Clear;
  txtn2.Clear;
  txtn3.Clear;
  txtn4.Clear;

  lbnota.Caption:='';
  txtn1.SetFocus;

end;

end.

