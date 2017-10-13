program Exercicio_1;

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
  writeln('+-------------------------------------+');
  writeln('|     Dobro de um numero inteiro      |');
  writeln('+-------------------------------------+');
  writeln('Escreva um numero inteiro: ');
  readln(n);
  n:=n*2;
  writeln('Dobro do numero digitado: ',n);
  writeln('+------------------------------------+');
  writeln('|     Pressione enter para sair      |');
  writeln('+------------------------------------+');
  readln;
end.
