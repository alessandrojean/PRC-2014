program media_2_notas;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
   var
     n1,n2,m:double;
begin
  writeln(' --------------------------');
  writeln('|     Calculo da Media     |');
  writeln(' --------------------------');
  write('Digite a primeira nota: ');
  readln(n1);
  write('Digite a segunda nota:');
  readln(n2);
  if(n1<0) or (n1>10) or (n2<0) or (n2>10) then   begin
  n2:=n2+1;
  writeln('Notas invalidas');
  end
  else
  m:=(n1+n2)/2;
  writeln('A media das notas -> ',m:2:2);
  readln;
end.

