program exercicio_3;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  n1,x,nx:integer;
begin
  writeln('+-----------------------------------+');
  writeln('|     Antecessores e sucessores     |');
  writeln('+-----------------------------------+');
  write('Digite um numero: ');
  readln(n1);
  writeln('Antecessores: ');
  nx:=1;
  repeat
    x:=n1-nx;
    writeln(x);
    nx:=nx+1;
  until (x=n1-10);
  nx:=1;
  writeln('');
  writeln('Sucessores: ');
  repeat
    x:=n1+nx;
    writeln(x);
    nx:=nx+1;
  until (x=n1+10);
  readln;
end.

