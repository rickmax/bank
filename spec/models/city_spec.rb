require 'rails_helper'

RSpec.describe City, type: :model do
  before(:all) do
    @region = create(:region)
    @state = create(:state)
    @city = create(:city)
  end
  
  it "is valid with valid attributes" do
    expect(@city).to be_valid
  end
end
