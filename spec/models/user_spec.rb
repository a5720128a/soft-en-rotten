require 'rails_helper'

RSpec.describe User, type: :model do
  it "is not valid without data" do
        movie_tmp = Movie.new
        expect(movie_tmp).not_to be_valid
    end
end
