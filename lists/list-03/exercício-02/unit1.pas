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
    ListBox1: TListBox;
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
  controle: integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure Fibonacci(quant:integer);
var
  t1,t2,s,tx:integer;
begin
  t1:=1;
  t2:=1;
  if (quant=1) then
  Form1.ListBox1.Items.Add(IntToStr(t1))
  else
  if (quant=2) then begin
  Form1.ListBox1.Items.Add(IntToStr(t1));
  Form1.ListBox1.Items.Add(IntToStr(t2))
  end
  else
  if (quant=3) then begin
  Form1.ListBox1.Items.Add(IntToStr(t1));
  Form1.ListBox1.Items.Add(IntToStr(t2));
  Form1.ListBox1.Items.Add(IntToStr(t1+t2))
  end
  else begin
  Form1.ListBox1.Items.Add(IntToStr(t1));
  Form1.ListBox1.Items.Add(IntToStr(t2));
  for controle:=3 to quant do
  begin
    s:=t1+t2;
    Form1.ListBox1.Items.Add(IntToStr(s));
    tx:=t2;
    t2:=s;
    t1:=tx;
  end;
  end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  ListBox1.Clear;
  Fibonacci(StrToInt(InputBox('Entrada de dados','Digite o número de termos da sequência de Fibonacci','1')));
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  ListBox1.Clear;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Form1.Close;
end;

end.

