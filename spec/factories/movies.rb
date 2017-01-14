FactoryGirl.define do
  factory :movie do
    title "Star Wars"
    year 1978
    description { FFaker::Lorem.paragraphs(rand(1..2)).join("\n\n") }
  end
end
