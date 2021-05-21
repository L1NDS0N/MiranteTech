# Design Pattern State
Origem: Wikipédia, a enciclopédia livre.
Diagrama UML Pattern Design State
State é um padrão de projeto de software usado quando o comportamento de um objeto muda, dependendo do seu estado.

## Introdução
Em certas ocasiões, quando o contexto em que está a desenvolver requer um objeto que possua comportamentos diferentes dependendo de qual estado se encontra, é difícil manejar a mudança de comportamento e os estados desse objeto, tudo dentro do mesmo bloco de código. O padrão State propõe uma solução para esta complicação, criando basicamente, um objeto para cada estado possível do objeto que o chama.

## Objetivo
Permite que um objeto altere seu comportamento de acordo com o estado interno que se encontra em um momento dado.

## Motivação
O padrão State é motivado por aqueles objetos que, em seu estado atual, varia o seu comportamento devido as diferentes mensagens que possa receber. Como exemplo, tomamos uma classe Livro, um objeto desta classe terá respostas diferentes, dependendo do seu estado(Disponível ou Emprestado). Por exemplo invocando o método reservar de um objeto da classe Livro seu comportamento será diferente, se o Livro está no estado Disponível ou no estado Emprestado.

Problema
Há uma extrema complexidade no código quando tentamos gerênciar comportamentos diferentes, dependendo de um número de estados diferentes. Também manter o código torna-se difícil, e mesmo em alguns casos, podem apontar a uma inconsistência de estados atuais na forma de implementação dos diferentes estados no código (por exemplo, com variáveis ​​para cada estado).

Considerações
Devemos analisar a complexidade em comparação com outras soluções.

Solução
Se implementa uma classe para cada estado diferente do objeto e o desenvolvimento de cada método para cada estado em particular. O objeto da classe a que pertencem esses estados resolvem os diferentes comportamentos, dependendo de sua condição, com as instâncias das classes de estado. Assim, sempre está presente em um objeto o seu estado atual e se comunica com ele a resolvendo suas responsabilidades.

A idéia principal do padrão State é a introdução de um classe abstrata EstadoLivro que representa os estados e uma interface para todas as classes que representam os próprios estados. Por exemplo, as classes Disponível e Prestado implementam responsabilidades especiais para os estados Disponível e Prestado respectivamente do objeto Livro. A classe Livro mantém uma instância de alguma subclasse de EstadoLivro com o atributo estado que representa o estado actual do Livro. Na implementação dos métodos de Livro haverá chamadas a esses objetos que serão representados pelo atributo estado para a execução das responsabilidades, dependendo de qual estado se encontre em esse momento, enviará essas chamadas para um objeto ou outro das subclasses de EstadoLivro.

