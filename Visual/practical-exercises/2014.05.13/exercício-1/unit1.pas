unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, ExtDlgs;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Principal: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure GroupBox1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure Image3DblClick(Sender: TObject);
    procedure Image4DblClick(Sender: TObject);
    procedure Image5DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
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

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  Principal.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  Label2.Caption:=OpenPictureDialog1.FileName;
  Label1.Visible:=True;
  Label2.Visible:=True;
end;

procedure TForm1.Image1DblClick(Sender: TObject);
begin
  Principal.Picture.LoadFromFile('Shiki.jpg');
end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;

procedure TForm1.Image2DblClick(Sender: TObject);
begin
  Principal.Picture.LoadFromFile('Steins;Gate.jpg');
end;

procedure TForm1.Image3DblClick(Sender: TObject);
begin
  Principal.Picture.LoadFromFile('Hunter x Hunter.jpg');
end;

procedure TForm1.Image4DblClick(Sender: TObject);
begin
  Principal.Picture.LoadFromFile('Code Geass.jpg');
end;

procedure TForm1.Image5DblClick(Sender: TObject);
begin
  Principal.Picture.LoadFromFile('Death Note.jpg');
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  Form1.Close;
end;

end.

