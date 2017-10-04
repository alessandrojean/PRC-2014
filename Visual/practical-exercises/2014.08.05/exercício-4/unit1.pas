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
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  cont:boolean;
  n,c,nf:integer;
  nx:double;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  n:=0;
  c:=0;
  cont:=true;
  while (cont=true) do
begin
  nf:=StrtoInt(InputBox('Digite a nota ou -1 para terminar','NOTINHA:','0'));
  if(nf=-1) then
  cont:=false
  else
  begin
  n:=n+nf;
  c:=c+1;
  end;
end;
  Edit1.Text:=IntToStr(c);
  nx:=n/c;
  Edit2.Text:=CurrToStr(nx);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  n:=0;
  c:=0;
end;

end.

