class Question < ApplicationRecord
  # Direct associations

  belongs_to :restaurant

  has_many   :submissions,
             :dependent => :destroy

  # Indirect associations

  has_many   :responses,
             :through => :submissions,
             :source => :user

  # Validations

  validates :option_1, :presence => true

  validates :option_2, :presence => true

  validates :restaurant_id, :presence => true

  validates :text, :presence => true

end
