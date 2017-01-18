# Exercise: Fetch and display movie posters

Let's add movie posters to our app! Extend the Movie model to store an optional URL to a poster image. When saving a movie, try to find the URL of a movie poster image using a HTTP API, and save it to the model when found.

- Implement the code needed to perform this. (Hint: you'll want to set up an [ActiveRecord Callback](http://api.rubyonrails.org/classes/ActiveRecord/Callbacks.html). Which one fits our needs best?)
- On a movie's detail page, when a poster is available, display it in an image tag. (Rails has an [image_tag](http://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-image_tag) helper for this.)
- Implement both a model and a feature spec that test this behaviour, _mocking the API request_.

#### Hints:

- The [OMDB API](https://www.omdbapi.com/) has an endpoint that returns movie data, including a poster image URL (see this [example request](http://www.omdbapi.com/?t=Rogue+One&y=2016&plot=short&r=json).)
- [HTTParty] is a great gem for accessing remote APIs.
- You can use RSpec's [built-in mocking functionality](https://www.relishapp.com/rspec/rspec-mocks/docs), but there are also some useful gems out there that specifically help with mocking and stubbing HTTP interactions, like [Webmock](https://github.com/bblimke/webmock) and [VCR](https://github.com/vcr/vcr).




[HTTParty]: https://github.com/jnunemaker/httparty
