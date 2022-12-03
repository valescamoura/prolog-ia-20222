% O ator X atuou no filme Y?

% Chris Pratt deve ter atuado em todos estes filmes
?- atuouem("Chris Pratt", "Guardians of the Galaxy").
?- atuouem("Chris Pratt", "Passengers").
?- atuouem("Chris Pratt", "The Magnificent Seven").
?- atuouem("Chris Pratt", "Jurassic World").
?- atuouem("Chris Pratt", "The Lego Movie").

% Will Smith atuou nos três primeiros filmes, e não atuou nos dois ultimos
?- atuouem("Will Smith", "Suicide Squad").
?- atuouem("Will Smith", "Focus").
?- atuouem("Will Smith", "After Earth").
?- atuouem("Will Smith", "The Lost City of Z").
?- atuouem("Will Smith", "Colossal").

% Quem dirigiu o filme Y?

?- dirigiu(X, "Kingsman: The Secret Service").
?- dirigiu(X, "Mad Max: Fury Road").
?- dirigiu(X, "Wakefield").
?- dirigiu(X, "Deepwater Horizon").
?- dirigiu(X, "Captain Fantastic").

% Quem atuou no filme Y e no filme Z?

?- atuouem(X, "Captain America: The Winter Soldier"), atuouem(X, "Old Boy"),!.
?- atuouem(X, "The Lovely Bones"), atuouem(X, "Deepwater Horizon"),!.
?- atuouem(X,  "Deepwater Horizon"), atuouem(X, "Death Proof"),!.
?- atuouem(X, "The Prestige"), atuouem(X,  "Pan"),!.
?- atuouem(X, "Guardians of the Galaxy"), atuouem(X, "Fast Five"),!.

% Algum filme não teve a atuação da atriz X?

% Visto que o dataset usado não diferencia entre mulheres e homens, adaptamos esta query para qualquer gênero
?- 

% Quem dirigiu mais de um filme (use ; para a resposta).

% da resposta duplicada e não usa ;
?- (dirigiu(X, Y), dirigiu(X, Z), Y \= Z).

% Sorted_Xs retira as repostas duplicadas, mas não usa ;
?- findall(X,  (dirigiu(X, Y), dirigiu(X, Z), Y \= Z), Xs), sort(Xs, Sorted_Xs).

% Qual filme teve mais de um diretor?

?- findall(Y,  (dirigiu(X, Y), dirigiu(Z, Y), X \= Z), Ys), sort(Ys, Sorted_Ys).

% Qual ator trabalhou com o mesmo diretor mais de uma vez?

?- findall(Ator,  (atuouem(Ator, Filme1), atuouem(Ator, Filme2), Filme1 \= Filme2, dirigiu(Diretor, Filme1), dirigiu(Diretor, Filme2)), Atores), sort(Atores, Sorted_Atores).

