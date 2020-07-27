require 'rails_helper'

RSpec.describe Bank, type: :model do
  
  before(:all) do
    @region = create(:region)
    @state = create(:state)
    @city = create(:city)
    @bank = create(:bank)
  end
  
  it "is valid with valid attributes" do
    expect(@bank).to be_valid
  end

end