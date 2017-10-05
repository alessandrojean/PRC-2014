program laco_repeticao_for;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  x:integer;
begin
  writeln('+--------------------------------------+');
  writeln('|     Estrutura de repeticao - For     |');
  writeln('+--------------------------------------+');
  for x:=1 to 15 do     {Para fazer em ordem decrescente, trocar o to por downto}
  begin
    writeln(x);
  end;
  readln;
end.

