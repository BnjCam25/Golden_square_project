require 'greet'

RSpec.describe "greet method" do
    it "returns Hello and name" do
      result = greet("Ben")
      expect(result).to eq "Hello, Ben!"
    end
  end