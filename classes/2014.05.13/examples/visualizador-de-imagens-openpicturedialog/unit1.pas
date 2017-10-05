unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, ExtDlgs;

type

  { TFrmImagem }

  TFrmImagem = class(TForm)
    Image1: TImage;
    BtCarregar: TSpeedButton;
    BtSair: TSpeedButton;
    Label1: TLabel;
    LblCaminho: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure BtCarregarClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmImagem: TFrmImagem;

implementation

{$R *.lfm}

{ TFrmImagem }

procedure TFrmImagem.BtCarregarClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  LblCaminho.Caption:=OpenPictureDialog1.FileName;
end;

procedure TFrmImagem.BtSairClick(Sender: TObject);
begin
  FrmImagem.Close;
end;

end.

