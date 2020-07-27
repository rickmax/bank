require 'rails_helper'

RSpec.describe Bank, type: :model do
  
  before(:all) do
    region = create(:region)
    state = create(:state, region: region)
    city = create(:city, state: state)
    @bank = create(:bank, city: city)
  end
  
  it "is valid with valid attributes" do
    expect(@bank).to be_valid
  end

end