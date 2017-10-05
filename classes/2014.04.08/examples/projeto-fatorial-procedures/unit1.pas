unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, Menus;

type

  { TFrmFatorial }

  TFrmFatorial = class(TForm)
    BitBtn1: TBitBtn;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    txtvalor: TEdit;
    Label1: TLabel;
    LblSaida: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmFatorial: TFrmFatorial;
  n,i,fat:integer;

implementation

{$R *.lfm}

{ TFrmFatorial }

procedure Fatorial(x:integer);
begin
  fat:=1;
  for i:=1 to x do
  begin
    if(x=0) then
    fat:=1
    else
      fat:=fat*i;
  end;
  FrmFatorial.LblSaida.Caption:='O fatorial de '+IntToStr(x)+' é '+IntToStr(fat);
end;

procedure TFrmFatorial.BitBtn1Click(Sender: TObject);
begin

     n:=StrToInt(txtvalor.Text);
  Fatorial(n);


end;

procedure TFrmFatorial.MenuItem2Click(Sender: TObject);
begin

  n:=StrToInt(txtvalor.Text);
  Fatorial(n);
end;

procedure TFrmFatorial.MenuItem3Click(Sender: TObject);
begin
  FrmFatorial.Close;
end;

procedure TFrmFatorial.MenuItem4Click(Sender: TObject);
begin
  FrmFatorial.txtvalor.Text:='0';
  FrmFatorial.LblSaida.Caption:='';
  FrmFatorial.txtvalor.SetFocus;
end;

end.

