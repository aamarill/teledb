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
end
