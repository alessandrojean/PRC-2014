program Exercicio_5;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  dolar,valor,resultado:double;

begin
  writeln('+---------------------------+');
  writeln('|     Cotacao do Dolar      |');
  writeln('+---------------------------+');
  writeln('Insira cotacao do Dolar: ');
  readln(dolar);
  writeln('Valor a ser convertido (R$): ');
  readln(valor);
  resultado:=dolar*valor;
  writeln('Valor convertido: ',resultado:0:2);
  writeln('+---------------------------------+');
  writeln('|     Aperte enter para sair      |');
  writeln('+---------------------------------+');
  readln;
end.

