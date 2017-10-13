unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    L1: TListBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  i:integer;
  x:integer;
  y:integer;
  r:integer;
  saida:String;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  x:=StrToInt(InputBox('Entrada de dados','Digite o numero para a quantidade de múltiplos: ','0'));
  y:=StrToInt(InputBox('Entrada de dados','Digite o numero para ser o multiplicador: ','0'));
  for i:=0 to x-1 do
  begin
     r:=y*i;
     L1.Items.Add(InttoStr(y)+' x '+InttoStr(i)+' = '+InttoStr(r));
  end;
  end;
procedure TForm1.BitBtn2Click(Sender: TObject);
begin
    L1.Clear;
end;

end.

