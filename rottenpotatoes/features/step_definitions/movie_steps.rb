Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /the director of "(.*)" should be "(.*)"/ do |movie, director|
  Movie.find_by(title: movie).director.should eq director
end