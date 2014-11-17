require 'rest-client'
require 'json'

url = 'https://api.themoviedb.org/3/movie/550?api_key=d440a7f7ce806a7de7507e34281331c7'
response = RestClient.get(url)
parsed_response = JSON.parse(response)