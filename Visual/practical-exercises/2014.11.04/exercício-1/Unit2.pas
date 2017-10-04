unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    Table1: TTable;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
      Table1.Insert;
      Table1.FieldByName('Nome').AsString:=Edit1.Text;
      Table1.FieldByName('Fone').AsString:=Edit2.Text;
      Table1.FieldByName('Facebook').AsString:=Edit3.Text;
      Table1.FieldByName('E-mail').AsString:=Edit4.Text;
      Table1.Post;


      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      Edit1.SetFocus
end;

procedure TForm2.FormShow(Sender: TObject);
begin
if not Table1.Exists then
    begin
      Table1.FieldDefs.Clear;

      Table1.FieldDefs.Add('Nome',ftString,30,true);


        Table1.FieldDefs.Add('Fone',ftInteger);


       Table1.FieldDefs.Add('Facebook',ftString,30,true);


       Table1.FieldDefs.Add('E-mail',ftString,30,true);

        Table1.CreateTable;
        end;
        Table1.Open;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      Edit1.SetFocus

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Enabled:=true;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
Form2.Close;
end;

end.
