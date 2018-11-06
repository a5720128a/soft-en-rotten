require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
    
    describe "Current user test" do
        
        it "helper_method should be nil when -not- logged in" do
            expect(subject.current_user).to eq(nil)
        end
        
        it "helper_method should be not nil when logged in" do
            user = User.create(:provider => 'twitter', :uid => '1234', :name => "test")
            session[:user_id] = user.id
            expect(subject.current_user).to_not eq(nil)
        end
        
        it "should saving time by not doing an expensive db query" do
            user = User.create(:provider => 'twitter', :uid => '1111', :name => "user1")
            user2 = User.create(:provider => 'twitter', :uid => '1112', :name => "user2")
            session[:user_id] = user.id
            expect(subject.current_user.name).to eq("user1")
            session[:user_id] = user2.id
            # for ||= if current_user is not nil/false dothing
            expect(subject.current_user.name).to eq("user1")
        end
        
    end
    
end
