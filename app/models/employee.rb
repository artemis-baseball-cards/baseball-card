class Employee < ApplicationRecord
  has_and_belongs_to_many :projects
  scope :critical_thinking, -> { where("areas_to_develop = ? ", ("{Critical thinking}"))}
end
