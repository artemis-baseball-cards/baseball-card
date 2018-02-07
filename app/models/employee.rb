require 'bundler'
Bundler.require

class Employee < ApplicationRecord
  include Filterable
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :skills
  has_many :others
  # scope :critical_thinking, -> { where("skills = ? ", ("{Critical thinking}"))}
  scope :intern, -> { where("project_roles = ? ", ('{Intern}'))}
  scope :analyst, -> { where("project_roles = ? ", ("{Analyst}"))}
  scope :associate, -> { where("project_roles = ? ", ("{Associate}"))}
  scope :engagement_manager, -> { where("project_roles = ? ", ("{Engagement Manager}"))}
  scope :partner, -> { where("project_roles = ? ", ("{Partner}"))}
  scope :principal, -> { where("project_roles = ? ", ("{Principal}"))}

  scope :healthcare, -> { where("industry_experience = ? ", ('{healthcare}'))}
  scope :private_equity, -> { where("industry_experience = ? ", ("{private_equity}"))}
  scope :technology, -> { where("industry_experience = ? ", ("{technology}"))}
  scope :startup, -> { where("industry_experience = ? ", ("{startup}"))}
  scope :non_profit, -> { where("industry_experience = ? ", ("{non profit}"))}
  scope :ecommerce, -> { where("industry_experience = ? ", ("{ecommerce}"))}
  scope :retail, -> { where("industry_experience = ? ", ("{retail}"))}

  scope :by_industry, -> (industry) { where("industry_experience like ?", "%#{industry}%")}

  def self.get_data
    session = GoogleDrive::Session.from_service_account_key("client_secret.json")
    spreadsheet = session.spreadsheet_by_title("360 Feedback Form (Responses)")
    worksheet = spreadsheet.worksheets.first
    data = worksheet.rows.each { |row| puts row.join(" | ") }
  end

  def self.get_atd
    session = GoogleDrive::Session.from_service_account_key("client_secret.json")
    spreadsheet = session.spreadsheet_by_title("Artemis revised baseball cards for epicodus team to build.xlsx")
    worksheet = spreadsheet.worksheets.first
    area_data = worksheet.rows.each { |row| puts row.join(" | ") }
  end

end
