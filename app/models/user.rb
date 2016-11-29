class User < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :dependent => :destroy

  has_many   :submissions,
             :dependent => :destroy

  # Indirect associations

  has_many   :completed_surveys,
             :through => :submissions,
             :source => :question

  # Validations

  validates :username, :uniqueness => true

  validates :username, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
