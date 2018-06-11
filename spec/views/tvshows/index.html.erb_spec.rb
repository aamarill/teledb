require 'rails_helper'
include TvshowHelper

RSpec.describe "tvshows/index" do
  it "renders _tvshows partials" do
    page = 1
    query = {query: 'the', page: page} #A query that is likely to return results
    response = search_tvshows(query)
    assign(:tvshows, response['results'])
    total_pages = response['total_pages']
    assign(:pages, surrounding_interval(1, page.to_i, total_pages.to_i))

    render
    expect(view).to render_template(:partial => "_tvshows")
  end

  it "renders _tvshows partials" do
    page = 1
    query = {query: 'the', page: page} #A query that is likely to return results
    response = search_tvshows(query)
    assign(:tvshows, response['results'])
    total_pages = response['total_pages']
    assign(:pages, surrounding_interval(1, page.to_i, total_pages.to_i))

    render
    expect(view).to render_template(:partial => "_page_numbers")
  end
end
