class Stroll < ApplicationRecord

  has_many :joins

  has_many :dogs, through: :joins

  belongs_to :dogsitter

end
