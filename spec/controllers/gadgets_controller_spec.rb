require 'rails_helper'

RSpec.describe GadgetsController, :type => :controller do

  before(:all) do
    @user = create(:user)
    @gadget1 = create(:gadget, user: @user)
    @gadget2 = create(:gadget, user: @user)
    @another_user = create(:user)
  end

  describe "GET #index" do

    it "responds successfully with an HTTP 200 status code" do
      sign_in @user
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      sign_in @user
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the gadget for a given user" do
      sign_in @user
      get :index
      expect(assigns(:gadgets)).to match_array([@gadget1, @gadget2])
    end

  end

end
