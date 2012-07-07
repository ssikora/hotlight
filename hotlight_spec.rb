require './hotlight.rb'

describe HotLight do
  let(:zip_98119) {HotLight.status('zipcode' => '98119')}
  let(:sodo) {HotLight.status('locations' => '1115').first}

  it "should return a list of locations" do
    zip_98119.should_not be(nil)
  end

  it "be on in Sodo" do
    sodo["hotLightOn"].should eql(1)
  end

end
