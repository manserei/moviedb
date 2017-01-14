FactoryGirl.define do
  factory :actor do
    gender { ["m", "f"].sample }
    first_name { gender == "m" ? FFaker::Name.first_name_male : FFaker::Name.first_name_female }
    last_name { FFaker::Name.last_name }
    birthdate { (15.years + rand(50.years)).ago }
    biography { FFaker::Lorem.paragraphs(rand(1..4)).join("\n\n") }
  end
end
