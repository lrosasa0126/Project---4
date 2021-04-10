# Project---4

Final Report:
Extract:
The selected topic was movies.
Three databases obtained from "Kaggle" and "Data World", in csv format were selected.
1.     https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset 
                              (IMDb movies.csv,  IMDb ratings.csv)
2.     https://data.world/mahe432/movies 
      (IMDb movies.csv)

The data cleaning process began, identifying that “IMDb movies” databases were very similar.

Transform: 
            The data cleaning process began, identifying that both databases were very similar.
Using Jupyter notebook (Python 3), we determined that the necessary data for the analysis was:
Film ID
Film Title
Year
Rating
Genre
Country
	For the main universe, the script “movie_extract.ipynb” makes the cleaning of the tables, creates a new DataFrame with the records divided into single values and transforms in a new csv file. 
The ratings universe is transformed in the script “imdb_ratings.ipynb” creating a new DataFrame with the records needed and transformed in a new csv file. 
The complementary universe is transformed in the script “IMDB_MOVIES_B.ipynb” following the same logic used in “movie_extract.ipynb” and transforms in a new csv file. 
The final inputs are uploaded in the Postgres Tool by the script “ETL_script”.

Load: 
	The final inputs were uploaded into Postgres as relational databases, since all the information is related by a movie ID, and in case of the ratings, the ID is a dependency given by the table of characteristics of the movies.
	The data was validated in order to know how many records we have in each table, which records are in the main universe and which are missing. This process was developed in order to have a complete dataset.
	After joining the three inputs, and complementing the main universe, the rating columns were analysed and standardized in order to keep the original records, and in case of a conflict, an average was calculated to obtain a more accurate value. 
	The final database useful for analysis is “imdb_movies_global”.
