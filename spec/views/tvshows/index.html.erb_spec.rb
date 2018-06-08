require 'rails_helper'
include TvshowHelper

RSpec.describe "tvshows/index" do
  it "renders 20 tv shows partials" do
    assign(:popular_tvshows, popular_tvshows )
    render
    expect(view).to render_template(:partial => "_popular_tvshow", :count => 20)
  end
end
