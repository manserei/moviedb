FactoryBot.define do
  factory :movie do
    title { FFaker::Movie.title }
    year { rand(1910..(Date.today.year)) }
    description { FFaker::Lorem.paragraphs(rand(1..2)).join("\n\n") }
    skip_poster_fetcher { true }
  end
end
