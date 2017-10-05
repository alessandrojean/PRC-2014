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
    BitBtn4: TBitBtn;
    ListBox1: TListBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  n1,p,c:Integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Enabled:=False;
  BitBtn4.Enabled:=False;
  n1:=0;
  for c:=0 to 50 do
  if(n1 mod 2<>0)then begin
  ListBox1.Items.Add(IntToStr(n1));
  n1:=n1+1
  end
  else
  n1:=n1+1;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
     BitBtn1.Enabled:=True;
     BitBtn4.Enabled:=True;
     ListBox1.Clear;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
     BitBtn4.Enabled:=False;
     BitBtn1.Enabled:=False;
     n1:=50;
     for c:=50 downto 0 do
     if(n1 mod 2<>0)then begin
     ListBox1.Items.Add(IntToStr(n1));
     n1:=n1-1
     end
     else
     n1:=n1-1;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin


end;

end.

