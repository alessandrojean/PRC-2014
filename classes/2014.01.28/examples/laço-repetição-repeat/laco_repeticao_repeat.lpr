program laco_repeticao_repeat;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  y:integer;
begin
  writeln('+-----------------------------------------+');
  writeln('|     Estrutura de repeticao - Repeat     |');
  writeln('+-----------------------------------------+');
  y:=1;
  repeat begin
    writeln(y);
    y:=y+1;
  end;
  until (y=15);
  readln;
end.

