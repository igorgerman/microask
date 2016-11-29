class Question < ApplicationRecord
  # Direct associations

  has_many   :submissions,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :option_1, :presence => true

  validates :option_2, :presence => true

  validates :restaurant_id, :presence => true

  validates :text, :presence => true

end
