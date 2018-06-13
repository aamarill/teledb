require 'rails_helper'

RSpec.describe TvshowsController do
  describe "GET #index" do
    it "returns http 200 and sets @page, @tvshows and @pages when a query is passed" do
      # Some query that is likely to return results
      get :index, {params:{'searchbar_input' => 'a'}}

      expect(assigns(:page)).to be_a(String)
      expect(assigns(:tvshows)).to be_a(Array)
      expect(assigns(:pages)).to be_a(Array)
      expect(response).to have_http_status(200)
    end

    it "redirects to popular_tvshows_path when no query is passed" do
      get :index
      expect(response).to redirect_to popular_tvshows_path
    end
  end

  describe "GET #show" do
    it "returns http 200 and sets @attrs when given an id" do
      get :show, {params: {'id' => 1}}

      expect(assigns(:attrs)).to be_a(Hash)
      expect(response).to have_http_status(200)
    end
  end
end
