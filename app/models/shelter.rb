class Shelter < ApplicationRecord
  validates :name, presence: true
  validates :rank, presence: true, numericality: true
  validates :city, presence: true

  has_many :pets, dependent: :destroy
  has_many :applications, through: :pet_applications

  def self.order_by_recently_created
    order(created_at: :desc)
  end

  def self.order_by_number_of_pets
    select("shelters.*, count(pets.id) AS pets_count")
      .joins("LEFT OUTER JOIN pets ON pets.shelter_id = shelters.id")
      .group("shelters.id")
      .order("pets_count DESC")
  end

  def self.reverse_abc_order
    self.find_by_sql("select * from shelters order by lower(name) desc")
  end

  def self.has_pending
    activerecord_pending = self.find_by_sql("select shelters.* from shelters join pets on shelters.id = pets.shelter_id join application_pets on pets.id = application_pets.pet_id join applications on application_pets.application_id = applications.id where applications.status = 'Pending'")
  end

  def pet_count
    pets.count
  end

  def adoptable_pets
    pets.where(adoptable: true)
  end

  def alphabetical_pets
    adoptable_pets.order(name: :asc)
  end

  def shelter_pets_filtered_by_age(age_filter)
    adoptable_pets.where('age >= ?', age_filter)
  end


  # ::has_pending partial solutions

  # select("shelters.name")
  #   .joins("join pets on shelters.id = pets.shelter_id join application_pets on pets.id = application_pets.pet_id join applications on application_pets.application_id = applications.id")
  #   or attempt at nested associations --> .joins(pets: [:application_pets [:applications]])
  #   .where("applications.status = ?", 'Pending')
  # activerecord_pending.map {|record| record.name}
end
