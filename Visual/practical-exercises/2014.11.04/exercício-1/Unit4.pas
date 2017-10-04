unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.Timer1Timer(Sender: TObject);
var
i:integer;
begin
for i:=10 to 100 do  begin
ProgressBar1.Position:=i;
Sleep(30);
end;
Form1.Show;
Timer1.Enabled:=False;
Form1.Enabled:=true;
Form4.Hide;
end;

end.
