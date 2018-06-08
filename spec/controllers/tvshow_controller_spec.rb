require 'rails_helper'

RSpec.describe TvshowsController do
  describe "GET index" do
    it "displays index page successfully" do
      get :index
      expect(response).to have_http_status(200)
    end

    it "gets popular_tvshows successfully" do
      get :index
      expect(assigns(:popular_tvshows)).to have_key("results")
    end
  end
end
