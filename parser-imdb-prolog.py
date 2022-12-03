import os
import pandas as pd

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
# for index in range(2):
    line = dataframe.loc[index]

    movie = line[movie_title_column]
    duration = str(line[duration_column])
    director = line[director_column]
    genres = line[genre_column].split(',')
    actors = line[actor_column].split(',')

    for person in actors:
        file_content += f"atuouem('{person.strip()}', '{movie}').\n"  # print(f"atuouem('{person.strip()}', '{movie}').\n") 
    
    file_content += f"dirigiu('{director}', '{movie}').\n"  # print(f"dirigiu('{director}', '{movie}').\n")
    
    for genre in genres:
        file_content += f"genero('{movie}', '{genre}').\n"  # print(f"genero('{movie}', '{genre}').\n")
        
    file_content += f"duracao('{movie}', {duration}).\n"  # print(f"duracao('{movie}', {duration}).\n")

output_dir = './output'
if not os.path.exists(output_dir):
    os.mkdir('./output')

file_path = f'{output_dir}/imdb.pl'
with open(file_path, 'w') as file:
    file.write(file_content)
