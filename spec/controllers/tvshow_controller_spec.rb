require 'rails_helper'

RSpec.describe TvshowsController do
  describe "GET #index" do
    it "returns http 200 when a query is passed" do
      get :index, {params:{'query' => 'any non-empty string'}}
      expect(response).to have_http_status(200)
    end

    it "redirects to popular_tvshows_path when no query is passed" do
      get :index
      expect(response).to redirect_to popular_tvshows_path
    end

    it "sets @tvshows when a query is passed" do
      get :index, {params:{'query' => 'any non-empty string'}}
      expect(assigns(:tvshows)).to_not be_nil
    end
  end
  
  describe "GET #show" do
    it "returns http 200" do
      get :show, {params: {'id' => 1}}
      expect(response).to have_http_status(200)
    end
  end
end
