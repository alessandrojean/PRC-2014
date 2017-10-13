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
    BitBtn4: TBitBtn;
    lblvetora: TLabel;
    lblvetorb: TLabel;
    lbliguais: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  a:array[1..5] of integer;
  b:array[1..8] of integer;
  i,c,d:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  lblvetora.Caption:='';
  for i:=1 to 5 do begin
    a[i]:=StrToInt(InputBox('Entrada de Dados - Vetor A','Digite o número da posição ['+IntToStr(i)+'] do Vetor A','0'));
    lblvetora.Caption:=lblvetora.Caption+' | '+IntToStr(a[i]);
  end;
  lblvetora.Caption:=lblvetora.Caption+' |';
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  lblvetorb.Caption:='';
  for i:=1 to 8 do begin
    b[i]:=StrToInt(InputBox('Entrada de Dados - Vetor A','Digite o número da posição ['+IntToStr(i)+'] do Vetor B','0'));
    lblvetorb.Caption:=lblvetorb.Caption+' | '+IntToStr(b[i]);
  end;
  lblvetorb.Caption:=lblvetorb.Caption+' |';
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  lbliguais.Caption:='';
   for c:=1 to 5 do begin
     for d:=1 to 8 do begin
       if (a[c]=b[d]) then
       lbliguais.Caption:=lbliguais.Caption+' | '+IntToStr(a[c]);
     end;
   end;
   lbliguais.Caption:=lbliguais.Caption+' |';
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
   lblvetora.Caption:='';
   lblvetorb.Caption:='';
   lbliguais.Caption:='';
end;

end.

