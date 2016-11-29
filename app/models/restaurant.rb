class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :questions,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

  validates :name, :uniqueness => true

  validates :name, :presence => true

end
