require 'open-uri'


base_url = "https://image.tmdb.org/t/p/original"
movies = open("http://tmdb.lewagon.com/movie/top_rated").read
movies = JSON.parse(movies)["results"]

movies.each do |movie|
	movie = Movie.create(
		title: movie["title"],
		overview: movie["overview"],
		poster_url: base_url + movie['poster_path'],
		rating: movie["vote_average"]
	)
end