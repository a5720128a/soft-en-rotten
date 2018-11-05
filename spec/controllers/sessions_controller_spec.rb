require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
    before do
        request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:twitter]
    end
 
    describe "#create" do
     
        it "should successfully create a user" do
            expect {
                post :create, provider: :twitter
            }.to change{ User.count }.by(1)
        end
     
        it "should successfully create a session" do
            [:user_id].should be_nil
            post :create, provider: :twitter
            [:user_id].should_not be_nil
        end
     
        it "should redirect the user to the root url" do
            post :create, provider: :twitter
            response.should redirect_to root_url
        end
     
      end
     
    describe "#destroy" do
        before do
            post :create, provider: :twitter
        end
     
        it "should clear the session" do
            session[:user_id].should_not be_nil
            delete :destroy
            session[:user_id].should be_nil
        end
     
        it "should redirect to the home page" do
            delete :destroy
            response.should redirect_to root_url
        end
    end
end
