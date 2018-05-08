FactoryGirl.define do
  factory :movie1, class: Movie do
    title "Alien"
    rating "R"
    director "Ridley"
    release_date "1979-05-25"
  end
  factory :movie2, class: Movie do
    title "Alien2"
    rating "R"
    director "Ridley"
    release_date "1980-05-25"
  end
  factory :movie3, class: Movie do
    title "Alien3"
    rating "R"
    release_date "1980-05-25"
  end
end
