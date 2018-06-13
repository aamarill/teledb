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

  def show_view_attributes(tvshow)
    base_url = configuration['images']['base_url']

    show_view_attributes = {
      'backdrop_path'     => tvshow['backdrop_path'],
      'base_url'          => base_url,
      'creators_names'    => creators_names_array(tvshow),
      'genres'            => genres_array(tvshow),
      'homepage'          => tvshow['homepage'],
      'languages'         => languages_array(tvshow),
      'networks'          => networks_array(tvshow, base_url),
      'number_of_seasons' => tvshow['number_of_seasons'],
      'origin_country'    => tvshow['origin_country'][0],
      'overview'          => tvshow['overview'],
      'poster_path'       => tvshow['poster_path'],
      'show_name'         => tvshow['original_name']
    }
  end

  def creators_names_array(tvshow)
    creators_names = []

    tvshow['created_by'].each do |creator_info|
      creators_names << creator_info['name']
    end

    creators_names
  end

  def genres_array(tvshow)
    genres = []

    tvshow['genres'].each do |genre|
      genres << genre['name']
    end

    genres
  end

  def languages_array(tvshow)
    languages = []

    tvshow['languages'].each do |language|
      languages << language
    end

    languages
  end

  def networks_array(tvshow, base_url)
    networks = []

    tvshow['networks'].each do |network|
     network_hash = {
       'name' => network['name'],
       'full_logo_path' => "#{base_url}w92/#{network['logo_path']}"
      }
      networks << network_hash
    end

     networks
   end
end
