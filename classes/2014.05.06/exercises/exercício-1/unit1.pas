unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, ExtCtrls, mmsystem;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  PlaySoundW('c:\sounds\test.wav', 0, 0);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  PlaySoundW('c:\sounds\test.wav', 0, 0);
end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

end.

