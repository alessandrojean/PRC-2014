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
  n1,n2,nx:double;

implementation

{$R *.lfm}

{ TForm1 }

Function Media(x:double;y:double):double;
  begin
    Media:=((x+y)/2);
  end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  n1:=StrToCurr(InputBox('Entrada de valores','Digite a primeira nota','0'));
  n2:=StrToCurr(InputBox('Entrada de valores','Digite a segunda nota','0'));
  if (n1<0) or (n1>10) or (n2<0) or (n2>10) then
  ShowMessage('Digite somente números entre 0 e 10')
  else begin
  nx:=Media(n1,n2);
  if(nx<=5) then
  Label1.Caption:='A média é '+CurrToStr(nx)+'. Conceito: I';
  if(nx>5) and (nx<=7) then
  Label1.Caption:='A média é '+CurrToStr(nx)+'. Conceito: R';
  if(nx>7) and (nx<=9) then
  Label1.Caption:='A média é '+CurrToStr(nx)+'. Conceito: B';
  if(nx>9) then
  Label1.Caption:='A média é '+CurrToStr(nx)+'. Conceito: MB';
  end;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Label1.Caption:='';
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Form1.Close;
end;

end.

