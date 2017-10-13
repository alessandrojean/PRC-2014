program Exercicio_4;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
  var
    idade:integer;
begin
  writeln('+-------------------------------+');
  writeln('|     Verificacao de idade      |');
  writeln('+-------------------------------+');
  writeln('Digite sua idade: ');
  readln(idade);
  if (idade>=18) then
  writeln('Voce e maior de idade')
  else
    writeln('Voce e menor de idade');
  writeln('+---------------------------------+');
  writeln('|     Aperte enter para sair      |');
  writeln('+---------------------------------+');
  readln;
end.

