program exercicio_4;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
n,x,d:integer;
begin
  writeln('+------------------+');
  writeln('|     Fatorial     |');
  writeln('+------------------+');
  write('Digite um numero: ');
  readln(n);
  d:=1;
  x:=1;
  while(d<n+1) do
  begin
    x:=x*d;
    d:=d+1;
  end;
  writeln('');
  writeln('O fatorial de ',n,' e ',x);
  readln;
end.

