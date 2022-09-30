require 'string_builder'


RSpec.describe StringBuilder do
  it "returns an empty string as the output" do
    string_builder = StringBuilder.new
    expect(string_builder.output).to eq ""
  end

  it "returns a size of a string" do
    string_builder = StringBuilder.new
    expect(string_builder.size).to eq 0
  end

  context "when a string is added" do
  it "returns the string we have inputted" do
    string_builder = StringBuilder.new
    string_builder.add("hello")
    expect(string_builder.output).to eq "hello"
  end

  it "returns the string we have inputted" do
    string_builder = StringBuilder.new
    string_builder.add("hello")
    expect(string_builder.size).to eq 5
  end
end
end