Shelter.destroy_all
Pet.destroy_all
Application.destroy_all
ApplicationPet.destroy_all
VeterinaryOffice.destroy_all
Veterinarian.destroy_all

# Shelters
aurora_shelter = Shelter.create!(name: 'Aurora Shelter', city: 'Aurora, CO', foster_program: false, rank: 3)
co_humane_society = Shelter.create!(name: 'The Colorado Humane Society', city: 'Denver, CO', foster_program: false, rank: 5)
foothills_shelter = Shelter.create!(name: 'Foothills Animal Shelter', city: 'Golden, CO', foster_program: true, rank: 4)
humane_society_boulder = Shelter.create!(name: 'Humane Society of Boulder Valley', city: 'Boulder, CO', foster_program: false, rank: 5)
animal_rescue_rockies = Shelter.create!(name: 'Animal Rescue of the Rockies', city: 'Denver, CO', foster_program: true, rank: 4)
denver_animal_shelter = Shelter.create!(name: 'Denver Animal Shelter', city: 'Denver, CO', foster_program: true, rank: 4)

# Pets
aurora_shelter.pets.create!(name: 'Mr. Pirate', breed: 'tuxedo shorthair', age: 5, adoptable: true)
aurora_shelter.pets.create!(name: 'Clawdia', breed: 'shorthair', age: 3, adoptable: true)
aurora_shelter.pets.create!(name: 'Ann', breed: 'ragdoll', age: 3, adoptable: false)

co_humane_society.pets.create!(name: 'Link', breed: 'dachshund', age: 1, adoptable: true)
co_humane_society.pets.create!(name: 'Tofu', breed: 'boxer', age: 1, adoptable: true)
co_humane_society.pets.create!(name: 'Theo', breed: 'labrador retriever', age: 4, adoptable: true)

foothills_shelter.pets.create!(name: 'Rude Boy', breed: 'hound', age: 2, adoptable: true)
foothills_shelter.pets.create!(name: 'Lawson', breed: 'Australian shepherd', age: 6, adoptable: true)
foothills_shelter.pets.create!(name: 'Petunia', breed: 'chihuahua', age: 1, adoptable: true)

humane_society_boulder.pets.create!(name: 'Emma', breed: 'beagle', age: 1, adoptable: true)
humane_society_boulder.pets.create!(name: 'Odessa', breed: 'border terrier', age: 6, adoptable: true)

animal_rescue_rockies.pets.create!(name: 'Bear', breed: 'flat-coated retriever', age: 0, adoptable: true)
animal_rescue_rockies.pets.create!(name: 'Six', breed: 'great pyrenees', age: 0, adoptable: true)
animal_rescue_rockies.pets.create!(name: 'Eddie', breed: 'pit bull terrier', age: 3, adoptable: true)

denver_animal_shelter.pets.create!(name: 'Leia', breed: 'pit bull terrier', age: 4, adoptable: true)
denver_animal_shelter.pets.create!(name: 'Josh', breed: 'Australian shepherd', age: 3, adoptable: true)
denver_animal_shelter.pets.create!(name: 'Maisie', breed: 'American staffordshire terrier', age: 1, adoptable: true)
denver_animal_shelter.pets.create!(name: 'Rug', breed: 'mixed', age: 3, adoptable: true)
denver_animal_shelter.pets.create!(name: 'Waffles', breed: 'hound', age: 2, adoptable: true)


# Applications

# hayley = Application.create!(applicant_name: 'Hayley Williams',
#   street: "789 Rose St.",
#   city: "Golden",
#   state: "CO",
#   zip_code: "80123",
#   statement: "I sing to my pets",
#   status: "Pending"
#   )
# jeff = Application.create!(applicant_name: 'Jeff Rosenstock',
#   street: "456 Mississippi Ave.",
#   city: "Denver",
#   state: "CO",
#   zip_code: "80012",
#   statement: "How much is that doggy",
#   status: "Pending"
#   )
#   ima = Application.create!(applicant_name: 'Ima Hoarder',
#     street: "987 Hidden Ln",
#     city: "Lakewood",
#     state: "CO",
#     zip_code: "80001",
#     statement: " ",
#     status: "In Progress"
#     )

# Application_pets
  # application_pet_1 = ApplicationPet.create!(application_id: hayley.id, pet_id: aurora_shelter.pets.first.id)
  # application_pet_2 = ApplicationPet.create!(application_id: jeff.id, pet_id: co_humane_society.pets.first.id)
  # application_pet_3 = ApplicationPet.create!(application_id: ima.id, pet_id: foothills_shelter.pets.first.id)

######################

# Veterinary Offices
best_vets = VeterinaryOffice.create!(name: 'Best Vets', boarding_services: true, max_patient_capacity: 20)
ok_vets = VeterinaryOffice.create!(name: 'OK Vets', boarding_services: true, max_patient_capacity: 15)

# Veterinarians
best_vets.veterinarians.create!(name: 'Taylor', review_rating: 10, on_call: true)
best_vets.veterinarians.create!(name: 'Tanya', review_rating: 9, on_call: true)
best_vets.veterinarians.create!(name: 'Jim', review_rating: 8, on_call: true)
best_vets.veterinarians.create!(name: 'Sam', review_rating: 10, on_call: false)

ok_vets.veterinarians.create!(name: 'Jerry', review_rating: 5, on_call: false)
ok_vets.veterinarians.create!(name: 'Nina', review_rating: 6, on_call: true)
