require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "find movie with same director" do
      before do
        @movie1 = FactoryGirl.create(:movie1)
        @movie2 = FactoryGirl.create(:movie2)
        @movie3 = FactoryGirl.create(:movie3)
      end

      it "should find all movies with same director" do
          @movie1.find_all_by_director.should ==(Movie.where(director: @movie1.director)) 
      end
      
      it "should return a empty list if no director" do
         @movie3.find_all_by_director.should be_empty 
      end
    end
end
