require "spec_helper"

describe ApplicationHelper do
  describe "#surrounding_interval" do
    it "returns a set containing the current integer and 9 closest surrounding integers" do
      min     = 1
      current = 8
      max     = 50
      response = surrounding_interval(min, current, max)
      expect(response).to eq([3,4,5,6,7,8,9,10,11,12])
    end

    it "returns a set containing the current integer and 9 closest surrounding integers" do
      min     = 1
      current = 1
      max     = 50
      response = surrounding_interval(min, current, max)
      expect(response).to eq([1,2,3,4,5,6,7,8,9,10])
    end

    it "returns a set containing the current integer and 9 closest surrounding integers" do
      min     = 1
      current = 50
      max     = 50
      response = surrounding_interval(min, current, max)
      expect(response).to eq([41,42,43,44,45,46,47,48,49,50])
    end

    it "returns nil if an input is not an integer" do
      min     = 1
      current = 50
      max     = 'not an integer'
      response = surrounding_interval(min, current, max)
      expect(response).to eq(nil)
    end
  end
end
