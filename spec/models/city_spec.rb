require 'rails_helper'

RSpec.describe City, type: :model do
  before(:all) do
    @city = create(:city)
  end
  
  it "is valid with valid attributes" do
    expect(@city).to be_valid
  end
end
