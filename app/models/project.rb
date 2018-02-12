class Project < ApplicationRecord
  has_and_belongs_to_many :employees
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :industries
  belongs_to :company
  has_many :others
end
