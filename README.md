# prolog-ia-20222

Trabalho de prolog para a disciplina de Inteligência Artificial - 20222

## Discentes

- Arthur B. Vasconcelos
- Valesca Moura

## Como executar



## Descrição

Crie uma base de dados de sentenças atômicas sobre os filmes de 2021 usando os seguintes predicados:
- atuouem(pessoa, filme).
- dirigiu(pessoa, filme).
- genero(filme, genero).
- duracao(filme, minutos).

Para descrever nomes de filmes e de pessoas você pode usar strings com aspas (p.ex. 'The Big Lebowski').

Salve sua base de dados como um programa Prolog e a carregue. Então escreva consultas do tipo:
1.  O ator X atuou no filme Y? (observe que você deve decidir quem são X e Y, não são variáveis)
2. Quem dirigiu o filme Y?
3. Quem atuou no filme Y e no filme Z?
4. Algum filme não teve a atuação da atriz X?
5. Quem dirigiu mais de um filme (use ; para a resposta).
6. Qual filme teve mais de um diretor?
7. Qual ator trabalhou com o mesmo diretor mais de uma vez?

Atenção: a base de conhecimento não pode ser definida manualmente. Você deve criar um parser a partir da base do IMDB para colocá-lo no formato Prolog.
É necessário considerar pelo menos 50 filmes na base, acrescido dos fatos relacionados às demais entidades; e pelo menos 5 entidades em cada pergunta.
