require 'rails_helper'

RSpec.describe State, type: :model do
  before(:all) do
    @region = create(:region)
    @state = create(:state)
  end
  
  it "is valid with valid attributes" do
    expect(@state).to be_valid
  end
end
