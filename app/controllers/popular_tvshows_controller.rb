class PopularTvshowsController < ApplicationController
  include TvshowHelper

  def index
    @tvshows = popular_tvshows['results']
  end
end
