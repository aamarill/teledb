require "spec_helper"

describe MovieDbApiVer3Helper do
  before(:all) do
    @successful_response = get('/discover/tv')
    @unsuccessful_response = get('non-existent/path')
    @unsuccessful_response2 = get('/discover/tv', "not a hash")
    @genres = genres
    @config = configuration
  end

  describe "#get" do
    it "returns a non-emtpy hash for an existing path" do
      expect(@successful_response).to be_a(Hash)
      expect(@successful_response).to_not be_empty
    end

    it "returns empty hash when path does not exist" do
      expect(@unsuccessful_response).to be_a(Hash)
      expect(@unsuccessful_response).to be_empty
    end

    it "returns empty hash when the query is not in hash format" do
      expect(@unsuccessful_response2).to be_a(Hash)
      expect(@unsuccessful_response2).to be_empty
    end
  end

  describe "#genres" do
    it "returns a non-empty hash" do
      expect(@genres).to be_a(Hash)
      expect(@genres).to_not be_empty
    end
  end

  describe "#configuration" do
    it "returns a non-empty hash" do
      expect(@config).to_not be_empty
      expect(@config).to be_a(Hash)
    end
  end
end
