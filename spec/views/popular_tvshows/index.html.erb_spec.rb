require 'rails_helper'
include TvshowHelper

RSpec.describe "popular_tvshows/index.html.erb", type: :view do
  it "renders _tvshows partial" do
    assign(:tvshows, popular_tvshows['results'] )
    render
    expect(view).to render_template(:partial => "_tvshows")
  end
end
