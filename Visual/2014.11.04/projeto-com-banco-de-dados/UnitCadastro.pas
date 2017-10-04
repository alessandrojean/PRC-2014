unit UnitCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, DB, DBTables;

type
  TFrmCadastro = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txtNumero: TEdit;
    txtNome: TEdit;
    txtNota1: TEdit;
    txtNota2: TEdit;
    txtMedia: TEdit;
    txtConceito: TEdit;
    GroupBox1: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PopupMenu1: TPopupMenu;
    Calcular1: TMenuItem;
    Cancelar1: TMenuItem;
    Fechar1: TMenuItem;
    BtnInclui: TBitBtn;
    DataSource1: TDataSource;
    Table1: TTable;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure BtnIncluiClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;
  n1,n2,med:real;
implementation

{$R *.dfm}

procedure TFrmCadastro.FormShow(Sender: TObject);
begin
  if not Table1.Exists then
    begin
      Table1.FieldDefs.Clear;

      //Adiciona o campo número
      Table1.FieldDefs.Add('Numero',ftInteger);

      //Adiciona o campo nome
        Table1.FieldDefs.Add('Nome',ftString,35,true);

       //Adiciona o campo nota1
       Table1.FieldDefs.Add('Nota1',ftFloat);

       //Adiciona o campo nota2
       Table1.FieldDefs.Add('Nota2',ftFloat);

       //Adiciona o campo média
       Table1.FieldDefs.Add('Media',ftFloat);

        //Adiciona o campo conceito
        Table1.FieldDefs.Add('Conceito',ftString,35,true);

        //Cria a tabela
        Table1.CreateTable;
        end;
        Table1.Open;
end;

procedure TFrmCadastro.BtnIncluiClick(Sender: TObject);
begin
      //Coloca a tabela em modo de inserção e bloqueia o registro atual
      Table1.Insert;

      //preenche os campo com os valores do edit
      Table1.FieldByName('Numero').AsString:=txtNumero.Text;
      Table1.FieldByName('Nome').AsString:=txtNome.Text;
      Table1.FieldByName('Nota1').AsString:=txtNota1.Text;
      Table1.FieldByName('Nota2').AsString:=txtNota2.Text;
      Table1.FieldByName('Media').AsString:=txtMedia.Text;
      Table1.FieldByName('Conceito').AsString:=txtConceito.Text;

      //Grava as alterações e desbloqueia o registro atual
      Table1.Post;

      //Limpa dos campo
      txtNumero.Clear;
      txtNome.Clear;
      txtNota1.Clear;
      txtNota2.Clear;
      txtMedia.Clear;
      txtConceito.Clear;

      //Trasfere o focu para o primeiro edi
      txtNumero.SetFocus
end;



procedure TFrmCadastro.Button1Click(Sender: TObject);
begin
       n1:=StrtoFloat(txtNota1.text);
       n2:=StrtoFloat(txtNota2.Text);
       med:=(n1+n2)/2;
       txtMedia.Text:=FloattoStr(med);
       if(med>=0) and(med<5) then
       txtConceito.Text:='I - Insatisfatório';
       if(med>=5) and(med<7) then
       txtConceito.Text:='R - Regular';
       if(med>=7) and(med<9) then
       txtConceito.Text:='B - Bom';
       if(med>=9) and(med<=10) then
       txtConceito.Text:='MB - Muito Bom';
end;

end.
