class Company < ApplicationRecord
  has_many :clients
  has_many :projects

  validates :name, uniqueness: true, presence: true
end
