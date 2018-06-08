require "spec_helper"

describe MovieDbApiVer3Helper do
  describe "#get" do
    it "returns page 1 of /discover/tv by default" do
      response = helper.get('/discover/tv')
      expect(response['page']).to eq(1)
    end

    it "returns empty hash when path does not exist" do
      response = helper.get('non-existant/path')
      expect(response).to be_empty
    end

    it "returns empty hash when a path is not given" do
      response = helper.get
      expect(response).to be_empty
    end

    it "returns empty hash when the query is not in hash format" do
      response = helper.get('/discover/tv', "not a hash")
      expect(response).to be_empty
    end
  end
end
