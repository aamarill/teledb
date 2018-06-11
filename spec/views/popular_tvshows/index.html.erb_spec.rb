require 'rails_helper'
include TvshowHelper

RSpec.describe "popular_tvshows/index.html.erb", type: :view do
  it "renders _tvshows partial" do
    page = 1
    query = {page: page}
    response = popular_tvshows(query)
    assign(:tvshows, response['results'])
    total_pages = response['total_pages']
    assign(:pages, surrounding_interval(1, page.to_i, total_pages.to_i))
    render

    expect(view).to render_template(:partial => "_tvshows")
  end

  it "renders _page_numbers partial" do
    page = 1
    query = {page: page}
    response = popular_tvshows(query)
    assign(:tvshows, response['results'])
    total_pages = response['total_pages']
    assign(:pages, surrounding_interval(1, page.to_i, total_pages.to_i))
    render

    expect(view).to render_template(:partial => "_page_numbers")
  end
end
