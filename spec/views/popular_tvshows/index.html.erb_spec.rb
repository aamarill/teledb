require 'rails_helper'
include TvshowHelper

RSpec.describe "popular_tvshows/index.html.erb", type: :view do

  before(:all) do
    page = 1
    query = {page: page}
    response = popular_tvshows(query)
    assign(:tvshows, response['results'])
    total_pages = response['total_pages']
    assign(:pages, surrounding_interval(1, page.to_i, total_pages.to_i))
  end

  it "renders '_tvshows' and '_page_numbers' partials" do
    render

    expect(view).to render_template(:partial => "_tvshows")
    expect(view).to render_template(:partial => "_page_numbers")
  end
end
