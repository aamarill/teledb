require 'rails_helper'

RSpec.describe PopularTvshowsController, type: :controller do
  describe "GET #index" do
    it "returns http 200" do
      get :index
      expect(response).to have_http_status(200)
    end

    it "sets @tvshows" do
      get :index
      expect(assigns(:tvshows)).not_to be_empty
    end
  end
end
