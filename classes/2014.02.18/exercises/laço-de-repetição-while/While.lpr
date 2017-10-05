program While;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  i:integer;
begin
  writeln('+----------------------------------------+');
  writeln('|     Estrutura de repeticao - While     |');
  writeln('+----------------------------------------+');
  i:=1;
  while (i<=9999999999999) do
   begin
     writeln(i);
     i:=i+1;
   end;
  readln;
end.

