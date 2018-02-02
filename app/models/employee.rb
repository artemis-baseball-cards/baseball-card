class Employee < ApplicationRecord
  has_and_belongs_to_many :projects
  has_many :others
  scope :critical_thinking, -> { where("skills = ? ", ("{Critical thinking}"))}
end
