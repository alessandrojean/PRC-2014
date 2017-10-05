program exercicio_2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  n,m:integer;
begin
  writeln('+-----------------+');
  writeln('|     Tabuada     |');
  writeln('+-----------------+');
  write('Digite um numero: ');
  readln(n);
  m:=0;
  writeln('');
  writeln('Tabuada do ',n);
  writeln('');
  while (m<=10) do
  begin
  writeln(n,'x',m,'=',n*m);
  m:=m+1;
  end;
  readln;


end.

