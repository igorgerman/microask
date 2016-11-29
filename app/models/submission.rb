class Submission < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :selection, :presence => { :message => "You have to complete the survey to get a discount!" }

end
