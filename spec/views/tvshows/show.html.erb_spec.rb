require 'rails_helper'
include TvshowHelper

RSpec.describe "tvshows/show" do
  it "has div" do
    query = {query: 'a'} #A query that is likely to return results
    tvshow = search_tvshows(query)['results'][0]
    original_name = tvshow['original_name']
    assign(:tvshow, tvshow)
    render

    expect(rendered).to match original_name
  end
end
