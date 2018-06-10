class TvshowsController < ApplicationController
  include TvshowHelper

  def index
    @query = params['query']

    if @query && !@query.empty?
      query = {query: @query}
      @tvshows = search_tvshows(query)['results']
    else
      redirect_to popular_tvshows_path
    end
  end

  def show
    @tvshow = get_show_by_id(params['id'])
  end
end
