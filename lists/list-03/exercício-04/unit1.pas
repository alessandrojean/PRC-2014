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
  n:double;


implementation

{$R *.lfm}

{ TForm1 }

Function Raiz(x:double):double;
  begin
    Raiz:=sqrt(x);
  end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  n:=StrToCurr(InputBox('Entrada de números','Digite um número','0'));
  Label1.Caption:='A raiz quadrada de '+CurrToStr(n)+' é '+CurrToStr(Raiz(n));
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

