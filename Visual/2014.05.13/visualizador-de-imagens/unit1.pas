unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, ExtCtrls;

type

  { TFrmVisualizaImagem }

  TFrmVisualizaImagem = class(TForm)
    BtnCarregar: TBitBtn;
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    procedure BtnCarregarClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmVisualizaImagem: TFrmVisualizaImagem;

implementation

{$R *.lfm}

{ TFrmVisualizaImagem }

procedure TFrmVisualizaImagem.BtnCarregarClick(Sender: TObject);
begin
  if FileExists(Edit1.Text) then
  Image1.Picture.LoadFromFile(Edit1.Text)
  else
    ShowMessage('Arquivo '+Edit1.Text+' não encontrado.');
end;

end.

