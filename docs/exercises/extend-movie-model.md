# Exercise: Extend the Movie model

Extend the movie model with a new `language` attribute that stores the language the movie was recorded in.

- Don't reuse the `create_movies` migration -- instead, generate a new one!
- Amend all forms, specs and factories to use this new attribute.
- Implement a validation that checks if the selected language is valid.
- Use the [language_list](https://github.com/scsmith/language_list) gem if you need a full list of all languages.
