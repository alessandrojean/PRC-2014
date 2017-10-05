unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    l2: TLabel;
    l3: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblacao: TLabel;
    l1: TLabel;
    rbcres: TRadioButton;
    rbdes: TRadioButton;
    txtn1: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    txtn2: TEdit;
    txtn3: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  n1,n2,n3,nx:integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
     n1:=StrToInt(txtn1.text);
     n2:=StrToInt(txtn2.text);
     n3:=StrToInt(txtn3.text);
     if (rbcres.Checked=true) then
     begin
     lblacao.Caption:='Ordem Crescente';
       if (n1>n2) then
       begin
         nx:=n1;
         n1:=n2;
         n2:=nx;
       end;
       if (n1>n3) then
       begin
         nx:=n1;
         n1:=n3;
         n3:=nx;
       end;
       if (n2>n3) then
       begin
         nx:=n2;
         n2:=n3;
         n3:=nx;
       end;
     end
    else
     begin
       lblacao.Caption:='Ordem Decrescente';
       if (n2>n1) then
       begin
         nx:=n2;
         n2:=n1;
         n1:=nx;
       end;
       if (n3>n1) then
       begin
         nx:=n3;
         n3:=n1;
         n1:=nx;
       end;
       if (n3>n2) then
       begin
         nx:=n3;
         n3:=n2;
         n2:=nx;
       end;
     end;
     l1.Caption:=IntToStr(n1);
     l2.Caption:=IntToStr(n2);
     l3.Caption:=IntToStr(n3);
end;

end.

