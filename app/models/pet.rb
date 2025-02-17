class Pet < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true, numericality: true
  belongs_to :shelter
  has_many :application_pets
  has_many :applications, through: :application_pets

  def shelter_name
    shelter.name
  end

  def shelter_id
    shelter.id
  end

  def self.adoptable
    where(adoptable: true)
  end

  def self.on_pending
    joins(:applications)
    .where("applications.status = 'Pending'").count
  end
end
