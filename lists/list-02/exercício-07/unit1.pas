unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TFrmMaiorMenor }

  TFrmMaiorMenor = class(TForm)
    BtnExibir: TBitBtn;
    BtnExibir1: TBitBtn;
    BtnExibir2: TBitBtn;
    txtn1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtn2: TEdit;
    txtn3: TEdit;
    txtn4: TEdit;
    txtn5: TEdit;
    txtn6: TEdit;
    procedure BtnExibir1Click(Sender: TObject);
    procedure BtnExibir2Click(Sender: TObject);
    procedure BtnExibirClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmMaiorMenor: TFrmMaiorMenor;
  maior,menor,n1,n2,n3,n4,n5,n6: Integer;

implementation

{$R *.lfm}

{ TFrmMaiorMenor }

procedure TFrmMaiorMenor.BtnExibirClick(Sender: TObject);
begin
  n1:=StrToInt(txtn1.Text);
  n2:=StrToInt(txtn2.Text);
  n3:=StrToInt(txtn3.Text);
  n4:=StrToInt(txtn4.Text);
  n5:=StrToInt(txtn5.Text);
  n6:=StrToInt(txtn6.Text);

  maior:=n1;
  if (n2>maior) then
  maior:=n2;
  if (n3>maior) then
  maior:=n3;
  if (n4>maior) then
  maior:=n4;
  if (n5>maior) then
  maior:=n5;
  if (n6>maior) then
  maior:=n6;

  menor:=n1;
  if (n2<menor) then
  menor:=n2;
  if (n3<menor) then
  menor:=n3;
  if (n4<menor) then
  menor:=n4;
  if (n5<menor) then
  menor:=n5;
  if (n6<menor) then
  menor:=n6;

  ShowMessage('Maior Número: '+IntToStr(maior)+sLineBreak+'Menor Número: '+IntToStr(menor));
end;

procedure TFrmMaiorMenor.BtnExibir1Click(Sender: TObject);
begin
  txtn1.Clear;
  txtn2.Clear;
  txtn3.Clear;
  txtn4.Clear;
  txtn5.Clear;
  txtn6.Clear;
  txtn1.SetFocus;
end;

procedure TFrmMaiorMenor.BtnExibir2Click(Sender: TObject);
begin
  FrmMaiorMenor.Close;
end;

end.

