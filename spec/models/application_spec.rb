require "rails_helper"

RSpec.describe Application, type: :model do
  before(:each) do
    @shelter_1 = Shelter.create(name: 'Aurora shelter', city: 'Aurora, CO', foster_program: false, rank: 9)
    @shelter_2 = Shelter.create(name: 'RGV animal shelter', city: 'Harlingen, TX', foster_program: false, rank: 5)
    @shelter_3 = Shelter.create(name: 'Fancy pets of Colorado', city: 'Denver, CO', foster_program: true, rank: 10)
    @shelter_4 = Shelter.create(name: 'Rolf o Rama', city: 'Arfvada, CO', foster_program: true, rank: 6)

    @shelter_1.pets.create(name: 'Mr. Pirate', breed: 'tuxedo shorthair', age: 5, adoptable: true)
    @shelter_1.pets.create(name: 'Clawdia', breed: 'shorthair', age: 3, adoptable: true)
    @shelter_3.pets.create(name: 'Lucille Bald', breed: 'sphynx', age: 8, adoptable: true)
    @shelter_4.pets.create(name: 'Barkley', breed: 'muppet', age: 42, adoptable: true)

    @hayley = Application.create!(applicant_name: 'Hayley Williams',
      street: "789 Rose St.",
      city: "Golden",
      state: "CO",
      zip_code: "80123",
      statement: "I sing to my pets",
      status: "Pending"
      )
    @jeff = Application.create!(applicant_name: 'Jeff Rosenstock',
      street: "456 Mississippi Ave.",
      city: "Denver",
      state: "CO",
      zip_code: "80012",
      statement: "How much is that doggy",
      status: "Pending"
      )
      @ima = Application.create!(applicant_name: 'Ima Hoarder',
        street: "987 Hidden Ln",
        city: "Lakewood",
        state: "CO",
        zip_code: "80001",
        statement: " ",
        status: "In Progress"
        )

     @application_pet_1 = ApplicationPet.create!(application_id: @hayley.id, pet_id: @shelter_1.pets.first.id)
     @application_pet_2 = ApplicationPet.create!(application_id: @jeff.id, pet_id: @shelter_4.pets.first.id)
     @application_pet_3 = ApplicationPet.create!(application_id: @ima.id, pet_id: @shelter_3.pets.first.id)
   end
   
  describe "relationships" do
    it {should have_many :application_pets}
    it {should have_many(:pets).through(:application_pets)}
  end

  describe "class methods" do
    describe "#pending" do
      it "returns all applications with 'pending' status" do
        expect(Application.pending).to eq([@hayley, @jeff])
      end
    end
  end
end
