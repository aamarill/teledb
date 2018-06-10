# Example query  - when query = {}, default values are used.
# See the following for default values.
# https://developers.themoviedb.org/3/discover/tv-discover
#
# example_query = {
#   language: 'en-US',
#   sort_by: 'popularity.desc',
#   page: 1,
#   timezone: 'America%2FNew_York',
#   include_null_first_air_dates: 'false',
# }

module TvshowHelper
  include MovieDbApiVer3Helper

  def popular_tvshows(query={})
    path = '/discover/tv'
    response = get(path, query)
  end

  def search_tvshows(query={})
    path = '/search/tv'
    response = get(path, query)
  end

  def get_show_by_id(id=nil)
    path = "/tv/#{id}"
    response = get(path)
  end
end
