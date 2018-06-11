class TvshowsController < ApplicationController
  include ApplicationHelper

  def index
    @searchbar_input = params['searchbar_input']

    if @searchbar_input && !@searchbar_input.empty?
      params['page'] ||= '1'
      page = params['page']
      query = {query: @searchbar_input, page: page}
      response = search_tvshows(query)
      @tvshows = response['results']
      total_pages = response['total_pages']
      @pages = surrounding_interval(1, page.to_i, total_pages.to_i)
    else
      redirect_to popular_tvshows_path
    end
  end

  def show
    @tvshow = get_show_by_id(params['id'])
  end
end
