require 'counter'


RSpec.describe Counter do
  it "returns a count of 0 initially" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "returns a count the number which is added" do
    counter = Counter.new
    counter.add(8)
    result = counter.report
    expect(result).to eq "Counted to 8 so far."
  end

  it "returns a count of all the values added together" do
    counter = Counter.new
    counter.add(8)
    counter.add(10)
    counter.add(9)
    result = counter.report
    expect(result).to eq "Counted to 27 so far."
  end

 
end