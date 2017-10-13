unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  n,soma:Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure Somatoria(X:Integer; var S:Integer);
var
  I:Integer;
  begin
    S:=0;
    for I:=1 to X do
    S:=S+I;
  end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  n:=StrToInt(InputBox('Entrada de dados','Informe um número','0'));
  Somatoria(n,soma);
  Label1.Caption:='A somatória de 1 até '+IntToStr(n)+' é '+IntToStr(soma);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Label1.Caption:='';
  BitBtn1.SetFocus;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Form1.Close;
end;

end.

