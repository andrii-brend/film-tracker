json.extract! movie, :id, :title, :autor, :description, :film_lenth, :rating, :created_at, :updated_at
json.url movie_url(movie, format: :json)
