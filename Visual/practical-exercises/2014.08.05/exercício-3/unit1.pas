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
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblres: TLabel;
    masc: TRadioButton;
    fem: TRadioButton;
    txtpeso: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtalt: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  imc,peso,altura:double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  altura:=StrToCurr(txtalt.Text);
  peso:=StrToCurr(txtpeso.Text);
  imc:=peso/(altura*altura);
  if (masc.Checked=true) then begin
    if (imc<20.7) then
     lblres.Caption:='Abaixo do peso'
    else
      if (imc>=20.7) and (imc<26.4) then
         lblres.Caption:='No Peso Normal'
         else
           if (imc>=26.4) and (imc<27.8) then
              lblres.Caption:='Marginalmente Acima do Peso'
              else
                if (imc>=27.8) and (imc<32.3) then
                   lblres.Caption:='Acima do Peso Ideal'
                   else
                     if (imc>=32.3) then
                        lblres.Caption:='Obeso';
  end
  else
  if (fem.Checked=true) then begin
       if (imc<19.1) then
     lblres.Caption:='Abaixo do peso'
    else
      if (imc>=19.1) and (imc<25.8) then
         lblres.Caption:='No Peso Normal'
         else
           if (imc>=25.8) and (imc<27.3) then
              lblres.Caption:='Marginalmente Acima do Peso'
              else
                if (imc>=27.3) and (imc<31.1) then
                   lblres.Caption:='Acima do Peso Ideal'
                   else
                     if (imc>=31.1) then
                        lblres.Caption:='Obeso';
end;
  end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  txtpeso.Text:='0';
  txtalt.Text:='0';
  lblres.Caption:='Resultado da Avaliação';
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin

end;

end.

