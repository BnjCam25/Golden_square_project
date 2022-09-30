require 'present'

RSpec.describe Present do

    it "wraps and unwraps a value" do
      present = Present.new
      present.wrap(9)
      expect(present.unwrap).to eq 9
    end

    it "unwraps before it wraps" do
      present = Present.new
      
      expect{present.unwrap}.to raise_error "No contents have been wrapped." 
    end

end