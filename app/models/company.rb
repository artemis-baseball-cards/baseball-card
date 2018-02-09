class Company < ApplicationRecord
  have_many :clients
  have_many :projects
end
