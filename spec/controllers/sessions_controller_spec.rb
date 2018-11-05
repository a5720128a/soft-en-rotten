require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
 
    describe "twitter #create" do
        before do
            # twitter
            request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:twitter]
        end
     
        it "should successfully create a user" do
            expect {
                post :create, provider: :twitter
            }.to change{ User.count }.by(1)
        end
     
        it "should successfully create a session" do
            session[:user_id].should be_nil
            post :create, provider: :twitter
            session[:user_id].should_not be_nil
        end
     
        it "should redirect the user to the root url" do
            post :create, provider: :twitter
            response.should redirect_to root_url
        end
     
      end
     
    describe "twitter #destroy" do
        before do
            # twitter
            request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:twitter]
        end
        
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
    
    describe "facebook #create" do
        before do
            # facebook
            request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:facebook]
        end
        
        it "should successfully create a user" do
            expect {
                post :create, provider: :facebook
            }.to change{ User.count }.by(1)
        end
     
        it "should successfully create a session" do
            session[:user_id].should be_nil
            post :create, provider: :facebook
            session[:user_id].should_not be_nil
        end
     
        it "should redirect the user to the root url" do
            post :create, provider: :facebook
            response.should redirect_to root_url
        end
     
      end
     
    describe "facebook #destroy" do
        before do
            # facebook
            request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:facebook]
        end
        before do
            post :create, provider: :facebook
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
