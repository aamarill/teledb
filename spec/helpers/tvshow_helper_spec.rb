require "spec_helper"

describe TvshowHelper do
  before(:all) do
    #An arbitrary (but likely that it exists) query
    @tvshows = search_tvshows({query: 'a'})

    @popular_tvshows = popular_tvshows
    @empty_hash = popular_tvshows('not a hash')
    @errors = search_tvshows
    @tvshow = get_show_by_id(1)
    @errors2 = get_show_by_id
    @base_url = configuration['base_url']
  end
  
  describe "#popular_tvshows" do
    it "returns page 1 of /discover/tv by default" do
      expect(@popular_tvshows['page']).to eq(1)
    end

    it "returns empty hash when query is not hash" do
      expect(@empty_hash).to be_empty
    end
  end

  describe "#search_tvshows" do
    it "returns results when query is passed" do
      expect(@tvshows).to have_key('results')
    end

    it "returns errors when query is not passed" do
      expect(@errors).to have_key('errors')
    end
  end

  describe "#get_show_by_id" do
    it "returns a tvshow hash with 'name' key when an integer is passed" do
      expect(@tvshow).to have_key('name')
    end

    it "returns a status code when nothing is passed" do
      expect(@errors2).to have_key('status_code')
    end
  end

  describe "#show_view_attributes" do
    it "returns a hash when given a tvshow hash" do
      attrs_hash = show_view_attributes(@tvshow)
      expect(attrs_hash).to be_a(Hash)
    end
  end

  describe "#creators_names_array"do
    it "returns an array when given a tvshow hash" do
      creators_array = creators_names_array(@tvshow)
      expect(creators_array).to be_a(Array)
    end
  end

  describe "#genres_array" do
    it "returns an array when given a tvshow hash" do
      genres_array = genres_array(@tvshow)
      expect(genres_array).to be_a(Array)
    end
  end

  describe "#languages_array" do
    it "returns an array when given a tvshow hash" do
      languages = languages_array(@tvshow)
      expect(languages).to be_a(Array)
    end
  end

  describe "#networks_array" do
    it "returns an array when given a tvshow hash and a base_url string" do
      networks = networks_array(@tvshow, @base_url)
      expect(networks).to be_a(Array)
    end
  end
end
