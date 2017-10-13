unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TFrmPS }

  TFrmPS = class(TForm)
    BtnCancelar: TBitBtn;
    BtnExibir: TBitBtn;
    BtnSair: TBitBtn;
    Label1: TLabel;
    lbnota: TLabel;
    lbnota1: TLabel;
    LboxA: TListBox;
    LboxP: TListBox;
    txtn1: TEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExibirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmPS: TFrmPS;
  n,c ,nx:Integer;

implementation

{$R *.lfm}

{ TFrmPS }

procedure TFrmPS.BtnExibirClick(Sender: TObject);
begin
  n:=strToInt(txtn1.Text);
  for c:=1 to 5 do
  begin
    nx:=n-c;
    LboxA.Items.Add(intToStr(nx));
  end;

  for c:=1 to 5 do
  begin
    nx:=n+c;
    LboxP.Items.Add(intToStr(nx));
  end;
end;

procedure TFrmPS.BtnSairClick(Sender: TObject);
begin
  FrmPS.Close;
end;

procedure TFrmPS.BtnCancelarClick(Sender: TObject);
begin
  txtn1.Clear;
  LboxA.Clear;
  LboxP.Clear;
  txtn1.SetFocus;
end;

end.

