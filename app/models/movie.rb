class Movie < ActiveRecord::Base
    #def user_params
    #    params.require(:user).permit(:title, :rating, :description, :release_date)
    #end
    #def self.find_in_tmdb(string)
    #    Tmdb::Movie.find(string)
    #end
    
    validates_presence_of :title
    #attr_accessible :title, :rating, :description, :release_date
end
