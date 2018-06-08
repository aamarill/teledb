# For API details visit
# https://developers.themoviedb.org/3/getting-started/introduction

require 'net/http'

module MovieDbApiVer3Helper
  BASE_URL = 'https://api.themoviedb.org/3'

  def get(path=nil, query_hash={})
    if query_hash.class != Hash
      return {}
    end

    query = ''
    query_hash.each do |key, value|
      query << "&#{key}=#{value}"
    end

    url = URI("#{BASE_URL}#{path}?api_key=#{ENV["moviedb_api_key"]}#{query}")
    res = Net::HTTP.get(url)

    begin
      res_hash = JSON.parse(res)
    rescue
      {}
    end
  end
end
