require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
    
    describe "#index" do
        it "responds successfully" do
            get :index
            expect(response).to be_success
        end
    end
    describe "#same_director" do
        before do
           @movie1 = FactoryGirl.create(:movie1) 
           @movie3 = FactoryGirl.create(:movie3)
        end
        it "can select movies with the same director of a valid movie" do
           get :same_director, id: @movie1.id
           expect(response).to be_success
           expect(response).to render_template :same_director
        end
        it "redirect to root path with empty director movie"do
           get :same_director, id: @movie3.id
           expect(response).to redirect_to root_path
        end
    end
    
end
