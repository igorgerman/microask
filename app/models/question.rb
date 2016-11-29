class Question < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :restaurant_id, :presence => true

  validates :text, :presence => true

end
