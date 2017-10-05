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
    Label1: TLabel;
    Label2: TLabel;
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
  n,fat:Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure Limpar();
begin
  Form1.Edit1.Clear;
  Form1.Edit1.Text:='0';
  Form1.Label2.Caption:=' ';
  Form1.Edit1.SetFocus;
end;

procedure Fatorial(X:Integer; var F:Integer);
var
  I:Integer;
  begin
    F:=1;
    for I:=1 to X do
    F:=F*I;
  end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  {n:=StrToInt(Edit1.Text);}
  n:=StrToInt(InputBox('Entrada de dados','Informe um número','0'));
  Fatorial(n,fat);
  Label2.Caption:='O Fatorial de '+IntToStr(n)+' é '+IntToStr(fat);
  Edit1.Text:=IntToStr(n);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Limpar;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Form1.Close;
end;

end.

