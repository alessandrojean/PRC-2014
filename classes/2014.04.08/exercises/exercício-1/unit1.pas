unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, Menus;

type

  { TFrmCrescente }

  TFrmCrescente = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    LblSaida: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }

  end;

var
  FrmCrescente: TFrmCrescente;
  nx:integer;

implementation

{$R *.lfm}

{ TFrmCrescente }
procedure Ordenar(a1,a2,a3,a4,a5: integer);
begin
  nx:=0;
  if(a1>a2) then begin
    nx:=a1;
    a1:=a2;
    a2:=nx;
  end;
  if(a1>a3) then begin
    nx:=a1;
    a1:=a3;
    a3:=nx;
  end;
  if(a1>a4) then begin
    nx:=a1;
    a1:=a4;
    a4:=nx;
  end;
  if(a1>a5) then begin
    nx:=a1;
    a1:=a5;
    a5:=nx;
  end;



  if(a2>a3) then begin
    nx:=a2;
    a2:=a3;
    a3:=nx;
  end;
  if(a2>a4) then begin
    nx:=a2;
    a2:=a4;
    a4:=nx;
  end;
  if(a2>a5) then begin
    nx:=a2;
    a2:=a5;
    a5:=nx;
  end;


  if(a3>a4) then begin
    nx:=a3;
    a3:=a4;
    a4:=nx;
  end;
  if(a3>a5) then begin
    nx:=a3;
    a3:=a5;
    a5:=nx;
  end;


  if(a4>a5) then begin
    nx:=a4;
    a4:=a5;
    a5:=nx;
  end;

  FrmCrescente.LblSaida.Caption:= IntToStr(a1)+'        '+IntToStr(a2)+'        '+   IntToStr(a3)+'        '+   IntToStr(a4)+'        '+IntToStr(a5);
end;

procedure Cancelar();
begin
  FrmCrescente.txtn1.Clear;
  FrmCrescente.txtn2.Clear;
  FrmCrescente.txtn3.Clear;
  FrmCrescente.txtn4.Clear;
  FrmCrescente.txtn5.Clear;
  FrmCrescente.LblSaida.Caption:='';
  FrmCrescente.txtn1.SetFocus;
end;

procedure Sair();
begin
  FrmCrescente.Close;
end;

procedure TFrmCrescente.BitBtn1Click(Sender: TObject);
begin
  Ordenar(StrToInt(txtn1.Text),StrToInt(txtn2.Text),StrToInt(txtn3.Text),StrToInt(txtn4.Text),StrToInt(txtn5.Text));
end;

procedure TFrmCrescente.BitBtn2Click(Sender: TObject);
begin
  Cancelar;
end;

procedure TFrmCrescente.BitBtn3Click(Sender: TObject);
begin

end;

procedure TFrmCrescente.MenuItem2Click(Sender: TObject);
begin
  Ordenar(StrToInt(txtn1.Text),StrToInt(txtn2.Text),StrToInt(txtn3.Text),StrToInt(txtn4.Text),StrToInt(txtn5.Text));
end;

procedure TFrmCrescente.MenuItem3Click(Sender: TObject);
begin
  Cancelar;
end;

procedure TFrmCrescente.MenuItem4Click(Sender: TObject);
begin
  Sair;
end;

end.

