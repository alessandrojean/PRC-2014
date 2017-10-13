program Exercicio_2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  n:integer;

begin
  writeln('+----------------------------------------+');
  writeln('|     Quadrado de um numero inteiro      |');
  writeln('+----------------------------------------+');
  writeln('Escreva um numero inteiro: ');
  readln(n);
  n:=n*n;
  writeln('Quadrado do numero digitado: ',n);
  writeln('+------------------------------------+');
  writeln('|     Pressione enter para sair      |');
  writeln('+------------------------------------+');
  readln;
end.

