program Exercicio_7;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  n1,n2,n3,n4,n5,n6,maior,menor:integer;
begin
  writeln('+------------------------+');
  writeln('|     Maior e Menor      |');
  writeln('+------------------------+');
  write('Escreva o numero 1: ');
  readln(n1);
  write('Escreva o numero 2: ');
  readln(n2);
  write('Escreva o numero 3: ');
  readln(n3);
  write('Escreva o numero 4: ');
  readln(n4);
  write('Escreva o numero 5: ');
  readln(n5);
  write('Escreva o numero 6: ');
  readln(n6);
  menor:=n1;
  if (n2<menor) then begin
    menor:=n2;
  end;
  if (n3<menor) then begin
    menor:=n3;
  end;
  if (n4<menor) then begin
    menor:=n4;
  end;
  if (n5<menor) then begin
    menor:=n5;
  end;
  if (n6<menor) then begin
    menor:=n6;
  end;

  maior:=n1;
  if (n2>maior) then begin
    maior:=n2;
  end;
  if (n3>maior) then begin
    maior:=n3;
  end;
  if (n4>maior) then begin
    maior:=n4;
  end;
  if (n5>maior) then begin
    maior:=n5;
  end;
  if (n6>maior) then begin
    maior:=n6;
  end;

  writeln('Numero maior: ',maior);
  writeln('Numero menor: ',menor);
  writeln('+------------------------------------+');
  writeln('|     Pressione enter para sair      |');
  writeln('+------------------------------------+');
  readln;
end.

