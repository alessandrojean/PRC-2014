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
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  quantpar,quantimpar: integer;
  n1,n2:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure ContarNumeros(inicial,final: integer);
var
  a:integer;
begin
  quantpar:=0;
  quantimpar:=0;
  inicial:=inicial+1;
  final:=final-1;
  for a:=inicial to final do
  begin
    if (a mod 2 = 0) then
    quantpar:=quantpar+1
    else
      quantimpar:=quantimpar+1;
  end;
  Form1.Label1.Caption:='Números pares: '+IntToStr(quantpar)+'. Números ímpares: '+IntToStr(quantimpar);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  n1:=StrToInt(InputBox('Entrada de valores','Digite o número inicial','0'));
  n2:=StrToInt(InputBox('Entrada de valores','Digite o número final','2'));
  ContarNumeros(n1,n2);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Label1.Caption:='';
end;

end.

