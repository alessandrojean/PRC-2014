unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Programas1: TMenuItem;
    Cadastro1: TMenuItem;
    N1: TMenuItem;
    SairdoPrograma1: TMenuItem;
    Consultadedados1: TMenuItem;
    procedure Cadastro1Click(Sender: TObject);
    procedure SairdoPrograma1Click(Sender: TObject);
    procedure Consultadedados1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses UnitCadastro, Unit1;

{$R *.dfm}

procedure TFrmPrincipal.Cadastro1Click(Sender: TObject);
begin
        FrmCadastro.showModal;
end;

procedure TFrmPrincipal.SairdoPrograma1Click(Sender: TObject);
begin
         FrmPrincipal.Close;
end;

procedure TFrmPrincipal.Consultadedados1Click(Sender: TObject);
begin
FrmConsulta.ShowModal;
end;

end.
