program Exercicio_3;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  b,c,n1,n2,n3,n4:double;
  a:integer;

begin
  writeln('+-----------------------------+');
  writeln('|     Calculo de formula      |');
  writeln('+-----------------------------+');
  writeln('Escreva a: ');
  readln(a);
  writeln('Escreva b: ');
  readln(b);
  writeln('Escreva c: ');
  readln(c);
  n1:= (a*a)*5-c;
  n4:=a mod 4;
  n2:=b-n4;
  n3:=n1/n2;
  writeln('Resultado final: ',n3:0:2);
  writeln('+------------------------------------+');
  writeln('|     Pressione enter para sair      |');
  writeln('+------------------------------------+');
  readln;
end.

