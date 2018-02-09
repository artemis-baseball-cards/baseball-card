class Company < ApplicationRecord
  has_many :clients
  has_many :projects
end
