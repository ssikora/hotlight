require 'hotlight.rb'

describe Hotlight do
  let(:zip_98119) {Hotlight.status('zipcode' => '98119')}
  let(:sodo) {Hotlight.status('locations' => '1115').first}

  it "should return a list of locations" do
    zip_98119.should have_at_least(1).items
  end

  it "be on in Sodo" do
    sodo["hotLightOn"].should eql(1)
  end

end
