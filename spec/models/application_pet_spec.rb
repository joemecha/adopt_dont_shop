require 'rails_helper'

RSpec.describe ApplicationPet, type: :model do
  describe "relationships" do
    it {should belong_to :application}
    it {should belong_to :pet}
  end

  describe ".instance methods" do
    it "adds selected pet to application_pets table" do
    # add test objects

    # call method

    # expected
  end
end
