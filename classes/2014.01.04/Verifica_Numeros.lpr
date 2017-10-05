program Verifica_Numeros;

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
  writeln('+--------------------------+');
  writeln('|     Verifica numeros     |');
  writeln('+--------------------------+');
  writeln('Digite um numero qualquer: ');
  readln(n);
  if (n mod 2 = 0) then
  writeln('O numero ', n, ' e PAR')
  else
  writeln('O numero ',n, ' e IMPAR');
  writeln('+----------------------------------+');
  writeln('|     Pressione qualquer tecla     |');
  writeln('+----------------------------------+');
  readln;
end.

