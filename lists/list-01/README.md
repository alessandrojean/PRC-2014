# Atividade Prática 01

1. Escreva um programa em object pascal que leia um número inteiro, calcule e exiba o resultado do dobro deste número. **(1,0)**
1. Escreva um programa em object pascal que leia um número inteiro, calcule e exiba o resultado no quadrado deste número. **(1,0)**
1. Escreva um programa em object pascal que calcule e exiba o resultado da
seguinte expressão matemática: **(1,0)**

       A2 * 5 – C / (B – A MOD 4)
   Dica: O usuário deverá informar os valores para as variáveis `A`, `B` e `C`)
1. Escreva um programa em object pascal que leia a idade de uma pessoa e deverá ser exibido na tela, se esta pessoa é maior ou menor de idade (considerar 18 anos para maior idade). **(1,0)**
    Dica: Usar comando condicional
1. Escreva um programa em object pascal que leia um valor em Reais (R$), leia também a cotação do Dólar, realize o cálculo da conversão de moeda (de Reais para Dólares) e exiba na tela o resultado. **(2,0)**
1. Escreva um programa em object pascal que leia 5 números inteiros, classifique em ordem crescente e apresente na tela. **(2,0)**
1. Escreva um programa em object pascal que permita a entrada de 6 números inteiros quaisquer e apresente o menor e o maior número na tela. **(2,0)**

    Exemplo:

    ```delphi
    program Verifica_numeros;
    
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
        writeln('+------------------------------------------+');
        writeln('|             Verifica numeros             |');
        writeln('+------------------------------------------+');
        writeln('Digite um numero : ');
        readln(n);
        if(n mod 2 = 0) then
            writeln('O numero ',n,' e PAR')
        else
            writeln('O numero ',n,' e IMPAR');
        writeln('+------------------------------------------+');
        writeln('| Pressione qualquer tecla....             |');
        writeln('+------------------------------------------+');
        readln;
    end.
    ```

    ![Imgur](https://i.imgur.com/LLgePBi.png)
