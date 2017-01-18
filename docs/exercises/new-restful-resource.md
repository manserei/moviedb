# Exercise: Implement a new Resource

Let's add a new "Genre" resource, representing a specific movie genre (eg. "Science Fiction", "Drama", "Fantasy", and so on).

- Implement this as a full RESTful resource.
- Implement a one-to-many relationship between genres and movies (ie. a movie should only ever have one genre.)
- In the movie form, allow the user to select a genre from a list of available genres.
- On the movie detail page, display its genre, when available.
- On the detail page for a genre, list all the movies belonging to the genre.
- Amend `spec/features/creating_a_movie_spec.rb` so it also adds a genre to the movie. Have it navigate to the genre detail page to test if the movie is now listed there.

**Hint:** Use `bin/rails generate resource Genre` as a starting point.
