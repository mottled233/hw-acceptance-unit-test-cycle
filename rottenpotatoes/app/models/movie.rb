class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def find_all_by_director
    return [] if director.nil?
    Movie.where(director: director)
  end
  
end
