class Employee < ApplicationRecord
  has_and_belongs_to_many :projects


  def self.previous_employee
    self.class.where("name < ?", name).order(name: :desc).first
  end

  def self.next_employee
    self.class.where("name < ?", name).order(name: :asc).first
  end

end
