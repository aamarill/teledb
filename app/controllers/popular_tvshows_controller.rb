class PopularTvshowsController < ApplicationController
  include ApplicationHelper

  def index
    params['page'] ||= '1'
    page = params['page']
    query = {page: page}
    response = popular_tvshows(query)
    @tvshows = response['results']
    total_pages = response['total_pages']
    @pages = surrounding_interval(1, page.to_i, total_pages.to_i)
  end
end
