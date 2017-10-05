program exercicio_1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  n1,n2:integer;
begin
  writeln('+-----------------------------------------+');
  writeln('|     Intervalo de 2 numeros inteiros     |');
  writeln('+-----------------------------------------+');
  write('Digite o 1o numero inteiro: ');
  readln(n1);
  write('Digite o 2o numero inteiro: ');
  readln(n2);
  if (n1>n2) then begin
  writeln(' ');
  writeln('Erro 404');
  end
  else begin
   writeln('');
  writeln('O intervalo entre os numeros sao: ');
  writeln('');
    for n1:=n1+1 to n2-1 do
    begin
    writeln(n1);
    end;
  end;

  readln;
end.

