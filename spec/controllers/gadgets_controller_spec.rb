require 'rails_helper'

RSpec.describe GadgetsController, :type => :controller do

  before(:each) do
    @user_attr = FactoryGirl.attributes_for(:user)
    @user = User.create!(@user_attr)
  end

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      sign_in @user
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end


end
