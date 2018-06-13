require 'rails_helper'

RSpec.describe PopularTvshowsController, type: :controller do
  describe "GET #index" do
    it "returns http 200, sets @page, @tvshows and @pages" do
      get :index

      expect(response).to have_http_status(200)
      expect(assigns(:page)).to be_a(String)
      expect(assigns(:tvshows)).to be_a(Array)
      expect(assigns(:pages)).to be_a(Array)
    end
  end
end
