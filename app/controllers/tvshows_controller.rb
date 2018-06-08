class TvshowsController < ApplicationController
  include TvshowHelper

  def index
    @popular_tvshows = popular_tvshows
  end
end
