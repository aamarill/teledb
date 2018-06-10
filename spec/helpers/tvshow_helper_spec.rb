require "spec_helper"

describe TvshowHelper do
  describe "#popular_tvshows" do
    it "returns page 1 of /discover/tv by default" do
      response = helper.popular_tvshows
      expect(response['page']).to eq(1)
    end

    it "returns empty hash when query is not hash" do
      query = 'not a hash'
      response = helper.popular_tvshows(query)
      expect(response).to be_empty
    end

    it "returns page 2 if specified" do
      query = {page: 2}
      response = helper.popular_tvshows(query)
      expect(response["page"]).to eq(2)
    end
  end

  describe "#search_tvshows" do
    it "returns results when query is passed" do
      query = {query: 'a'}
      response  = helper.search_tvshows(query)
      expect(response).to have_key('results')
    end

    it "returns errors when query is not passed" do
      response  = helper.search_tvshows
      expect(response).to have_key('errors')
    end
  end

  describe "get_show_by_id" do
    it "returns a result with name attribute when an integer is passed" do
      response = helper.get_show_by_id(1)
      expect(response).to have_key('name')
    end

    it "returns a status code when nothing is passed" do
      response = helper.get_show_by_id
      expect(response).to have_key('status_code')
    end
  end
end
