import os
import pandas as pd

def normalize(string: str) -> str:
    string = string.replace('ï', 'i').replace('í', 'i')
    string = string.replace('è', 'e').replace('é', 'e')
    string = string.replace('ù', 'u').replace('ú', 'u')
    string = string.replace('à', 'a').replace('á', 'a').replace('â', 'a').replace('ã', 'a')
    string = string.replace('ò', 'o').replace('ó', 'o').replace('ô', 'o').replace('õ', 'o')
    string = string.replace('ç', 'c')
    return string.strip()

dataframe = pd.read_csv('./datasets/IMDB-Movie-Data.csv')

movie_title_column = 'Title'
director_column = 'Director'
actor_column = 'Actors'
genre_column = 'Genre'
duration_column = 'Runtime (Minutes)'
columns = [movie_title_column, director_column, actor_column, genre_column, duration_column]
num_columns = dataframe.shape[0]

drop_column = [] 
[drop_column.append(k) for k in dataframe.keys() if k not in columns]
dataframe.drop(drop_column, axis=1, inplace=True)

file_content = ''
for index in range(num_columns):
    line = dataframe.loc[index]
    movie = normalize(line[movie_title_column])
    actors = line[actor_column].split(',')

    for actor in actors:
        person = normalize(actor)
        file_content += f'atuouem("{person}","{movie}").\n'  # print(f"atuouem('{person)}', '{movie}').\n") 

for index in range(num_columns):
    line = dataframe.loc[index]
    movie = normalize(line[movie_title_column])
    director = normalize(line[director_column])
    
    file_content += f'dirigiu("{director}","{movie}").\n'  # print(f"dirigiu('{director}', '{movie}').\n")

for index in range(num_columns):
    line = dataframe.loc[index]
    movie = normalize(line[movie_title_column])
    genres = line[genre_column].split(',')
         
    for genre in genres:
        genre = normalize(genre)
        file_content += f'genero("{movie}","{genre}").\n' # print(f"genero('{movie}', '{genre}').\n")

for index in range(num_columns):
    line = dataframe.loc[index]
    movie = normalize(line[movie_title_column])
    duration = str(line[duration_column])
     
    file_content += f'duracao("{movie}",{duration}).\n'  # print(f"duracao('{movie}', {duration}).\n")

output_dir = './output'
if not os.path.exists(output_dir):
    os.mkdir('./output')

file_path = f'{output_dir}/imdb.pl'
with open(file_path, 'w') as file:
    file.write(file_content)
