class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

  validates :name, :uniqueness => true

  validates :name, :presence => true

end
