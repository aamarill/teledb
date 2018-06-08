module TvshowHelper
  include MovieDbApiVer3Helper

  def popular_tvshows(query = {})
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

    path = '/discover/tv'
    response = get(path, query)
  end
end
