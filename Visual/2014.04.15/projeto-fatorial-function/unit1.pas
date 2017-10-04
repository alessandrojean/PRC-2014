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
    procedure Label1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  n:Integer;
implementation

{$R *.lfm}

{ TForm1 }

Function Fatorial(x:Integer):Integer;
var
  f,i:Integer;
  begin
    f:=1;
    for i:=1 to x do
    f:=f*i;
    Fatorial:=f;
  end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  n:=StrToInt(InputBox('                                      Entrada de Número','Informe um número','0'));
   Label1.Caption:='O Fatorial de '+IntToStr(n)+' é '+IntToStr(Fatorial(n));
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

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.

