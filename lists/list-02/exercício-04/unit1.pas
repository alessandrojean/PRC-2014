unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TFrmAsterisco }

  TFrmAsterisco = class(TForm)
    BtnExibir: TBitBtn;
    BtnSair: TBitBtn;
    LBoxA: TListBox;
    procedure BtnExibirClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmAsterisco: TFrmAsterisco;
  a:Integer;
  b:Integer;
  t:String;

implementation

{$R *.lfm}

{ TFrmAsterisco }

procedure TFrmAsterisco.BtnExibirClick(Sender: TObject);
begin

  t:='*';

  {for a:=9 downto 1 do
  begin

    for b:10 downto 1 do
    begin

    end;


  end;

  t:=t+'*';

  LBoxA.Items.Add(t);
end;     }
  BtnExibir.Visible:=false;
  for b:=10 downto 1 do begin
    for a:=b-1 downto 1 do begin
      t:=t+'*';
    end;
    if (b=1) then
    t:='*';
    LBoxA.Items.Add(t);
    t:='*';
  end;
end;

end.

