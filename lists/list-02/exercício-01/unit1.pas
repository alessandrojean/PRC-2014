unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons;

type

  { TFrmMM }

  TFrmMM = class(TForm)
    BtnExibir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSair: TBitBtn;
    txtn1: TEdit;
    txtn2: TEdit;
    txtn3: TEdit;
    txtn4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbmaior: TLabel;
    lbmenor: TLabel;
    procedure BtnExibirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmMM: TFrmMM;
  n1,n2,n3,n4:Integer;
  maior,menor:Integer;

implementation

{$R *.lfm}

{ TFrmMM }

procedure TFrmMM.BtnExibirClick(Sender: TObject);
begin
  n1:=StrToInt(txtn1.Text);
  n2:=StrToInt(txtn2.Text);
  n3:=StrToInt(txtn3.Text);
  n4:=StrToInt(txtn4.Text);

  maior:=n1;
  if (n2>maior) then
  maior:=n2;
  if(n3>maior) then
  maior:=n3;
  if (n4>maior) then
  maior:=n4;

  menor:=n1;
  if (n2<menor) then
  menor:=n2;
  if(n3<menor) then
  menor:=n3;
  if (n4<menor) then
  menor:=n4;

  if (maior mod 2=0) then
  lbmaior.Caption:=('Maior: '+intToStr(maior)+' é PAR')
  else
  lbmaior.Caption:=('Maior: '+intToStr(maior)+' é IMPAR');

  if (menor mod 2=0) then
  lbmenor.Caption:=('Menor: '+intToStr(menor)+' é PAR')
  else
  lbmenor.Caption:=('Menor: '+intToStr(menor)+' é IMPAR');
end;

procedure TFrmMM.BtnCancelarClick(Sender: TObject);
begin
  txtn1.Clear;
  txtn2.Clear;
  txtn3.Clear;
  txtn4.Clear;

  lbmaior.Caption:='';
  lbmenor.Caption:='';
  txtn1.SetFocus;
end;

procedure TFrmMM.BtnSairClick(Sender: TObject);
begin
  FrmMM.Close;
end;

end.

