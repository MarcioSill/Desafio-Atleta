Algoritmo "ATLETAS"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Nelio Alves
//* Descrição   : depois ler os dados de N atletas (nome, sexo, altura, peso),
                //mostrar um relatório.
// Autor(a)    : Marcio da Silva
// Data atual  : 29/09/2022
Var

   i, N, M, F:inteiro
   nome, sexo, maisAlt:caracter
   A, altura, peso, pesMedio, pesAtleta, porHomem, alMulher, altMedMulher:real


Inicio

   M <- 0
   F <- 0
   A <- 0.90
   pesMedio <- 0
   pesAtleta <- 0
   porHomem <- 0
   altMedMulher <- 0

   escreva("Qual a quantidade de atletas? ")
   leia(N)

   para i de 1 ate N faca

      escreval("Digite os dados do atleta numero ", i,":")
      escreva("name: ")
      leia(nome)

      escreva("Sexo: ")
      leia(sexo)

      enquanto ((sexo<>"F")e(sexo <> "M")) faca
         escreva("Valor invalido! Favor digitar F ou M: ")
         leia (sexo)
      fimenquanto

      escreva("Altura: ")
      leia(altura)
      enquanto (altura <= 0 )faca
         escreva("Valor invalido! Favor digitar um valor positivo: ")
         leia(altura)
      fimenquanto

      escreva("Peso: ")
      leia(peso)
      enquanto (peso <= 0 )faca
         escreva("Valor invalido! Favor digitar um valor positivo: ")
         leia(peso)
      fimenquanto

      pesAtleta <- pesAtleta + peso

      se (sexo = "M")entao
         M <- M + 1
      senao
         F <- F + 1
         alMulher <- alMulher + altura
      fimse

      se (altura > A)entao
         A <- altura
         maisAlt <- nome
      fimse
   fimpara

   pesMedio <- pesAtleta / N
   porHomem <- (M / N) * 100

   escreval()
   escreval("RELATÓRIO:")
   escreval("Peso médio dos atletas: ", pesMedio:4:2 )
   escreval("Atleta mais alto: ", maisAlt)
   escreval("Porcentagem de homens: ", porHomem:4:1, " %")

   se(F <> 0)entao
      altMedMulher <- alMulher / F
      escreval("Altura média das mulheres: ",altMedMulher:4:2)
   senao
      escreval("Não há mulheres cadastradas")
   fimse

Fimalgoritmo