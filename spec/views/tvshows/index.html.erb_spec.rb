require 'rails_helper'
include TvshowHelper

RSpec.describe "tvshows/index" do
  it "renders _tvshows partials" do
    query = {query: 'a'} #A query that is likely to return results
    assign(:tvshows, search_tvshows(query)['results'] )
    render
    expect(view).to render_template(:partial => "_tvshows")
  end
end
