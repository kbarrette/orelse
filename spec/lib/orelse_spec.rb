require 'orelse'

RSpec.describe(Object) do
  describe "#or_else(alternative)" do
    it "returns the original value when truthy" do
      expect("truthy".or_else("alt")).to eq("truthy")
    end

    it "returns the alternative value when falsy" do
      expect(nil.or_else("alt")).to eq("alt")
    end
  end
end
