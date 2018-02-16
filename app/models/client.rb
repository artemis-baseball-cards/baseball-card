class Client < ApplicationRecord
  belongs_to :company

  validates :name, :contact, :position, presence: true
end
