unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
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

procedure TForm1.ListBox1Click(Sender: TObject);
begin

  Image1.Picture.LoadFromFile(ListBox1.GetSelectedText+'.jpg');
  if (ListBox1.GetSelectedText = 'Teclado') then
  Label2.Caption:='Marca: Razer'+sLineBreak+'Plataforma: PC'+sLineBreak+'Conexão: USB'+sLineBreak+'Cor: Preto'+sLineBreak+'5 teclas adicionais macro dedicadas'+sLineBreak+'Dimensões: 475 x 171 x 30 mm'+sLineBreak+'R$ 824,41'
  else
    if (ListBox1.GetSelectedText = 'Monitor') then
      Label2.Caption:='Marca: Philips'+sLineBreak+'Tipo de Monitor: LED'+sLineBreak+'Tamanho da tela: 24"'+sLineBreak+'Resolução Máxima: 1920 x 1080 @144Hz ( FULL HD)'+sLineBreak+'Dimensões aproximadas do produto (cm) - AxLxP: 51,7x56,5x22cm'+sLineBreak+'R$ 1.169,10'
      else
        if (ListBox1.GetSelectedText = 'Mouse') then
          Label2.Caption:='Marca: Razer'+sLineBreak+'Modelo: Mamba 4G Dual Sensor'+sLineBreak+'Sensores a laser  Razer'+sLineBreak+'Interface USB'+sLineBreak+'Pode ser usado com ou sem fio'+sLineBreak+'R$ 699,90'
          else
           if (ListBox1.GetSelectedText = 'Placa-Mãe') then
             Label2.Caption:='Fabricante: MSI'+sLineBreak+'Características Técnicas:'+sLineBreak+' -Soquete LGA 1155 (Core i7, i5 e i3)'+sLineBreak+' -Killer Ethernet: Evita os travamentos'+sLineBreak+' -OC Genie II: Overclock em 1 segundo.'+sLineBreak+' -Sound Blaster Cinema: Experiência realistica com Som Sorround'+sLineBreak+'Conceito: Otimizado para várias placas gráficas, melhores componentes de classe e ótima placa base para jogos e atividades pesadas.'+sLineBreak+'R$558,90'
              else
               if (ListBox1.GetSelectedText = 'Processador') then
                 Label2.Caption:='Fabricante: AMD'+sLineBreak+'Características Técnicas:'+sLineBreak+' -8 Núcleos'+sLineBreak+' -Velocidade do clock de 4GHz'+sLineBreak+' -Soquete AM3+'+sLineBreak+'Conceito: Esse processador executa várias tarefas com o desempenho máximo, além de possuir um desempenho estável e suave.'+sLineBreak+'R$699,88'
                  else
                    if (ListBox1.GetSelectedText = 'Cooler') then
                      Label2.Caption:='Fabricante: Thermaltake'+sLineBreak+'Características Técnicas:'+sLineBreak+' -Alta confiabilidade, bomba de perfil baixo oferece rápida circulação e queda da temperatura.'+sLineBreak+' -Intel: LGA2011, LGA1366, LGA1156, LGA1155, LGA775'+sLineBreak+' -AMD: FM1, AM3+, AM3, AM2+, AM2'+sLineBreak+' -Bomba de água:'+sLineBreak+'  -Suporte para duas ventoinhas'+sLineBreak+'Conceito: Soquete universal com Radiador de alta eficiência e ventoinhas super potentes.'+sLineBreak+'R$487,90'
                      else
                       if (ListBox1.GetSelectedText = 'Memória') then
                         Label2.Caption:='Fabricante: Kingston'+sLineBreak+'Características Técnicas:'+sLineBreak+' -Capacidade: 8GB'+sLineBreak+' -Velocidade: DDR3 1333'+sLineBreak+' -Latência CAS: 9'+sLineBreak+' -Tensão: 1.5V'+sLineBreak+' -Buffered / Registro: Unbuffered'+sLineBreak+'Conceito: Uma ótima memória com 8GB, tecnologia DDR3 SDRAM, chapamento em ouro e velocidade de 1333MHz'+sLineBreak+'R$284,90'
                          else
                            if (ListBox1.GetSelectedText = 'Fonte de Alimentação') then
                              Label2.Caption:='Fabricante: C3 Tech'+sLineBreak+'Características Técnicas:'+sLineBreak+' -Saída de +12V “single rail” para até 38A de corrente.'+sLineBreak+' -Tipos de Proteção: curto circuito'+sLineBreak+' -Quantidade Conectores: SATA 4'+sLineBreak+' -Quantidade Conectores: IDE 5'+sLineBreak+' -Quantidade Conectores: VGA 6 pinos 2'+sLineBreak+'Conceito: Com a vantagem de possuir a garantia de qualidade C3 Tech, essa fonte possui uma ótima proteção em casos de curto circuito.'+sLineBreak+'R$249,90';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

