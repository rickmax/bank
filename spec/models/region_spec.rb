require 'rails_helper'

RSpec.describe Region, type: :model do
  before(:all) do
    @region = create(:region)
  end
  
  it "is valid with valid attributes" do
    expect(@region).to be_valid
  end
end
