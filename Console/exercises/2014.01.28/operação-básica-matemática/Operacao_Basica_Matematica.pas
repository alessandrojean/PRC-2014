program Operacao_Basica_Matematica;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
  var
   n1,n2,resultado: double;
begin
   write('Digite o primeiro numero: ');
   readln(n1);
   write('Digite o segundo numero: ');
   readln(n2);
   resultado:=(n1+n2);
   writeln('A soma dos numeros -> ',resultado:0:2); { 0:2 limita para 2 casas decimais}
   resultado:=(n1-n2);
   writeln('A diferenca dos numeros -> ',resultado:0:2);
   resultado:=(n1*n2);
   writeln('O produto dos numeros -> ',resultado:0:2);
   resultado:=(n1/n2);
   writeln('A divisao dos numeros -> ',resultado:0:2);
   readln;
end.

