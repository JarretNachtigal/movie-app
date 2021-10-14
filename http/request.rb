require "http"

response = HTTP.get("http://localhost:3000/display_movies")
pp response.parse
