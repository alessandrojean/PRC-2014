unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TFrmCrescente }

  TFrmCrescente = class(TForm)
    BtnCancelar1: TBitBtn;
    BtnExibir: TBitBtn;
    BtnCancelar: TBitBtn;
    LBoxN: TListBox;
    txtn1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtn2: TEdit;
    txtn3: TEdit;
    txtn4: TEdit;
    txtn5: TEdit;
    procedure BtnCancelar1Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExibirClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmCrescente: TFrmCrescente;
  n1,n2,n3,n4,n5,nx:Integer;

implementation

{$R *.lfm}

{ TFrmCrescente }

procedure TFrmCrescente.BtnExibirClick(Sender: TObject);
begin
  n1:=StrToInt(txtn1.Text);
  n2:=StrToInt(txtn2.Text);
  n3:=StrToInt(txtn3.Text);
  n4:=StrToInt(txtn4.Text);
  n5:=StrToInt(txtn5.Text);
  nx:=0;

  if (n1>n2) then begin
    nx:=n2;
    n2:=n1;
    n1:=nx;
  end;
  if (n1>n3) then begin
    nx:=n3;
    n3:=n1;
    n1:=nx;
  end;
  if (n1>n4) then begin
    nx:=n4;
    n4:=n1;
    n1:=nx;
  end;
  if (n1>n5) then begin
    nx:=n5;
    n5:=n1;
    n1:=nx;
  end;
  if (n2>n3) then begin
    nx:=n3;
    n3:=n2;
    n2:=nx;
  end;
  if (n2>n4) then begin
    nx:=n4;
    n4:=n2;
    n2:=nx;
  end;
  if (n2>n5) then begin
    nx:=n5;
    n5:=n2;
    n2:=nx;
  end;
  if (n3>n4) then begin
    nx:=n4;
    n4:=n3;
    n3:=nx;
  end;
  if (n3>n5) then begin
    nx:=n5;
    n5:=n3;
    n3:=nx;
  end;
  if (n4>n5) then begin
    nx:=n4;
    n4:=n5;
    n5:=nx;
  end;

  LBoxN.Items.Add(IntToStr(n1));
  LBoxN.Items.Add(IntToStr(n2));
  LBoxN.Items.Add(IntToStr(n3));
  LBoxN.Items.Add(IntToStr(n4));
  LBoxN.Items.Add(IntToStr(n5));
end;

procedure TFrmCrescente.BtnCancelarClick(Sender: TObject);
begin
  txtn1.Clear;
  txtn2.Clear;
  txtn3.Clear;
  txtn4.Clear;
  txtn5.Clear;
  LBoxN.Clear;
  txtn1.SetFocus;
end;

procedure TFrmCrescente.BtnCancelar1Click(Sender: TObject);
begin
  FrmCrescente.Close;
end;

end.

