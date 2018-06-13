require 'rails_helper'
include TvshowHelper

RSpec.describe "tvshows/show" do
  it "has the show's title" do
    query = {query: 'a'} #A query that is likely to return results
    tvshow_id = search_tvshows(query)['results'][0]['id']
    tvshow = get_show_by_id(tvshow_id)
    original_name = tvshow['original_name']
    assign(:attrs, show_view_attributes(tvshow))
    render

    expect(rendered).to match original_name
  end
end
