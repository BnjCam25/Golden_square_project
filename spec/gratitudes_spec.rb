require 'gratitudes'


RSpec.describe Gratitudes do
  it "returns noithing to be grateful for" do
    gratitude = Gratitudes.new
    expect(gratitude.format).to eq "Be grateful for: "
  end

  it "returns a singular thing to be grateful for" do
    gratitude = Gratitudes.new
    gratitude.add("food")
    expect(gratitude.format).to eq "Be grateful for: food"
  end

  it "returns two things to be grateful for" do
    gratitude = Gratitudes.new
    gratitude.add("food")
    gratitude.add("family")
    expect(gratitude.format).to eq "Be grateful for: food, family"
  end

  it "returns three things to be grateful for" do
    gratitude = Gratitudes.new
    gratitude.add("food")
    gratitude.add("family")
    gratitude.add("warmth")
    expect(gratitude.format).to eq "Be grateful for: food, family, warmth"
  end

end