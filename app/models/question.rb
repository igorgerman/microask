class Question < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :option_2, :presence => true

  validates :restaurant_id, :presence => true

  validates :text, :presence => true

end
