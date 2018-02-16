require 'bundler'
Bundler.require

class Employee < ApplicationRecord
  include Filterable
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :industries
  has_many :others

  def self.get_by_role(employees, role_type)
    roles = []
    employees.each do |employee|
      employee.roles.each do |role|
        if role.name == role_type
          roles.push(employee)
        end
      end
    end
    roles
  end

  def self.get_data
    session = GoogleDrive::Session.from_service_account_key("client_secret.json")
    spreadsheet = session.spreadsheet_by_title("360 Feedback Form (Responses)")
    worksheet = spreadsheet.worksheets.first
    data = worksheet.rows.each { |row| puts row.join(" | ") }
  end

  def self.find_score(skill, data, employee)
    total = []
    data.each do |inner_array|
      if inner_array[2] == employee.name
        value = inner_array[1].split(",").map(&:strip).count(skill)
        total.push(value)
      end
    end
    total.sum
  end

  def self.get_atd
    session = GoogleDrive::Session.from_service_account_key("client_secret.json")
    spreadsheet = session.spreadsheet_by_title("Artemis revised baseball cards for epicodus team to build.xlsx")
    worksheet = spreadsheet.worksheets.first
    area_data = worksheet.rows.each { |row| puts row.join(" | ") }
  end

end
