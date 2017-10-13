program Exercicio_6;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes;
var
  n1,n2,n3,n4,n5,t:integer;
begin
  writeln('+-------------------------------------+');
  writeln('|     Numeros em Ordem Crescente      |');
  writeln('+-------------------------------------+');
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
  if (n1>n2) then begin
  t:=n2;
  n2:=n1;
  n1:=t;
  end;
  if (n1>n3) then begin
  t:=n3;
  n3:=n1;
  n1:=t;
  end;
  if (n1>n4) then begin
  t:=n4;
  n4:=n1;
  n1:=t;
  end;
  if (n1>n5) then begin
  t:=n5;
  n5:=n1;
  n1:=t;
  end;



  if (n2>n3) then begin
  t:=n3;
  n3:=n2;
  n2:=t;
  end;
  if (n2>n4) then begin
  t:=n4;
  n4:=n2;
  n2:=t;
  end;
  if (n2>n5) then begin
  t:=n5;
  n5:=n2;
  n2:=t;
  end;



  if (n3>n4) then begin
  t:=n4;
  n4:=n3;
  n3:=t;
  end;
  if (n3>n5) then begin
  t:=n5;
  n5:=n3;
  n3:=t;
  end;



  if (n4>n5) then begin
  t:=n5;
  n5:=n4;
  n4:=t;
  end;

  writeln('Os numeros em ordem crescente sao: ',n1,' ',n2,' ',n3,' ',n4,' ',n5);
  writeln('+------------------------------------+');
  writeln('|     Pressione enter para sair      |');
  writeln('+------------------------------------+');
  readln;


end.

