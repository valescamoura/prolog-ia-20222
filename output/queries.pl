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

?- atuouem(X, "Captain America: The Winter Soldier"), atuouem(X, "Old Boy").
?- atuouem(X, "The Lovely Bones"), atuouem(X, "Deepwater Horizon").
?- atuouem(X,  "Deepwater Horizon"), atuouem(X, "Death Proof").
?- atuouem(X, "The Prestige"), atuouem(X,  "Pan").
?- atuouem(X, "Guardians of the Galaxy"), atuouem(X, "Fast Five").

% Algum filme não teve a atuação da atriz X?

?- 

% Quem dirigiu mais de um filme (use ; para a resposta).

?- 

% Qual filme teve mais de um diretor?

?- 

% Qual ator trabalhou com o mesmo diretor mais de uma vez?

?- 
