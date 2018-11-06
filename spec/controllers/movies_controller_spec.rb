require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
    
    describe "all movie index test" do
        subject { get :index }
        
        it "returns http success" do
            get 'index'
            expect(response).to be_success
        end
        
        it "renders the index template" do
            expect(subject).to render_template(:index)
            expect(subject).to render_template("index")
            expect(subject).to render_template("movies/index")
        end
        
        it "does not render a different template" do
            expect(subject).to_not render_template("movies/show")
        end
    end
    
    describe "show detail test" do
        
        it "renders the show template" do
            @movie = Movie.create!( :title => 'Aladdin', :rating => 'G', 
            :description => 'test', :release_date => '25-Nov-1992')
            get :show, id: @movie.id
            expect(response.status).to eq(200)
            expect(response).to render_template(:show)
        end
        
    end
    
    describe "new template test" do
        it "render new's template" do
            get :new
            expect(response.status).to eq(200)
            expect(response).to render_template(:new)
        end
    end
    
    describe "create movie test" do
        
        before (:each) do
            @mock_movie_attributes = {:title => 'Space Balls', 
            :description => "test", :release_date => '24/6/1987', :rating => 'PG'}
        end
      
        it "saves the new movie in the database" do
            expect {
            post :create, movie: @mock_movie_attributes
            }.to change(Movie,:count).by(1)
        end
        
        it "assigns the saved movie to @movie" do
            post :create, movie: @mock_movie_attributes
            expect(assigns(:movie).title).to include("Space Balls")
        end
        
        it "redirects to the home page" do
            post :create, movie: @mock_movie_attributes
            expect(response).to redirect_to(:action => 'index')
        end
        
    end
    
    describe "edit movie test" do
        
        it "render edit's template" do
            @movie = Movie.create!( :title => 'Aladdin', :rating => 'G', 
            :description => 'test', :release_date => '25-Nov-1992')
            get :edit, id: @movie.id
            expect(response.status).to eq(200)
            expect(response).to render_template(:edit)
        end
        
    end
    
    describe "update movie test" do
        
        before (:each) do
            @mock_movie_attributes = {:title => 'Space Balls', :description => 'test', :release_date => '24/6/1987', :rating => 'PG'}
            @mock_movie = Movie.create!( :title => 'Aladdin', :rating => 'G', :description => 'test', :release_date => '25-Nov-1992')
        end
        
        it "located the requested movie" do
            put :update, id: @mock_movie, movie: @mock_movie_attributes
            expect(assigns(:movie)).to eq(@mock_movie)
        end
        
        it "changed the requested movies attributes" do
            put :update, id: @mock_movie, movie: @mock_movie_attributes
            @mock_movie.reload
            expect(@mock_movie.title).to eq("Space Balls")
            expect(@mock_movie.rating).to eq("PG")
        end
        
        it "redirects to the updated movie" do
            put :update, id: @mock_movie, movie: @mock_movie_attributes
            expect(response).to redirect_to @contact
        end
        
    end
    
    describe "destroy(delete) movie test" do
        
        before (:each) do
            @mock_movie_attributes = {:title => 'Space Balls', :description => 'test', :release_date => '24/6/1987', :rating => 'PG'}
            @mock_movie = Movie.create!( :title => 'Aladdin', :rating => 'G', :description => 'test', :release_date => '25-Nov-1992')
        end
        
        it "deletes the movie" do
            expect{
                delete :destroy, id: @mock_movie
            }.to change(Movie,:count).by(-1)
        end
        
        it "redirects to the main page " do
            delete :destroy, id: @mock_movie
            expect(response).to redirect_to(:action => 'index') 
        end
        
    end
    
    describe "search from tmdb test" do
        
        require 'themoviedb-api'
        Tmdb::Api.key("62eb90992ffe3b066599f478d9738cc6")
        
        it 'should success the post' do
            post :search_tmdb, {:search_terms => 'hardware'}
            expect(response).to be_success
        end
        
        it "should return correct results" do
            @movie = Tmdb::Search.movie("The Matrix", language: 'en')
            expect(@movie.to_s).to include("The Matrix")
        end
        
    end
    
end
