# Movie Database 2017

This is a custom Rails 5 exercise application for my **Ruby on Rails trainings**. It implements a simple **movie database** with three resources:

- Movies (eg. "Star Wars")
- Actors (eg. "Harrison Ford")
- Roles, linking movies and actors together (eg. "Han Solo")

It is intended to be a base application to expand and experiment on, making use of Ruby on Rails' most important features and including some simple specs as a starting point.


### Getting started

1. Install an up-to-date version of Ruby (minimum 2.2).
2. Install Bundler: `gem install bundler`
3. Clone this repository: `git clone https://github.com/mansworkshops/moviedb2017.git`
4. Execute the `bin/setup` script.

If you plan on sharing the changes you're going to make to this application, please consider forking this repository into your own GitHub account.


### Recommended reading

- The [Ruby on Rails Guides](http://guides.rubyonrails.org/) are full of useful information on building Ruby on Rails apps. Use these extensively!
- The [Ruby on Rails API Reference](http://api.rubyonrails.org/) documents each and every class and method available in Ruby on Rails.
- The [JBuilder] gem is used to generate JSON responses.
- For tests, this app uses [RSpec] together with [FactoryGirl] (also see its [GETTING_STARTED.md](https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md)) and [FFaker].
- [Capybara] is a framework for acceptance/feature/integration specs. This app uses it in conjunction with [Poltergeist] and [DatabaseCleaner].

[JBuilder]: https://github.com/rails/jbuilder
[Capybara]: https://github.com/teamcapybara/capybara
[Poltergeist]: https://github.com/teampoltergeist/poltergeist
[DatabaseCleaner]: https://github.com/DatabaseCleaner/database_cleaner
[FactoryGirl]: https://github.com/thoughtbot/factory_girl
[FFaker]: https://github.com/ffaker/ffaker


## Suggested Exercises

### Discussion: List of Actors

The way the [list of actors](https://github.com/mansworkshops/moviedb2017/blob/readme-update/app/views/actors/index.html.erb) (grouped by first letter of last name) is currently being rendered isn't terribly efficient. Why is this? How could this be optimized?


### Exercise: Display actor birthdays

Since we're already storing birthdates for actors, let's use this data to add a list of today's birthdays to the application's start page.

Implement a spec that tests this.


### Exercise: Implement a new Resource

Implement a new "Genre" resource, representing a specific movie genre (eg. "Science Fiction", "Drama", "Fantasy", ...). Implement this as a full RESTful resource.

Implement a one-to-many relationship between genres and movies (ie. a movie should only ever have one genre.) On the movie detail page, display its genre, when available; on the detail page for a genre, list all the movies belonging to the genre.

Amend `spec/features/creating_a_movie_spec.rb` so it also adds a genre to the movie. Have it navigate to the genre detail page to test if the movie is now listed there.

