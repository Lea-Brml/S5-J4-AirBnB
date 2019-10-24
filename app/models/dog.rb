class Dog < ApplicationRecord

  has_many :joins

  has_many :strolls, through: :joins

  has_many :dogsitters

  belongs_to :city

end
