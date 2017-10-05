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
    lblre: TLabel;
    txtn1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtn2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  n1,n2:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  n1:=StrToInt(txtn1.Text);
  n2:=StrToInt(txtn2.Text);
  if (n1>n2) then
  lblre.Caption:='>'
  else
    if (n1<n2) then
        lblre.Caption:='<'
        else
          lblre.Caption:='=';
end;

end.

