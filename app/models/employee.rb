require 'bundler'
Bundler.require

class Employee < ApplicationRecord
  has_and_belongs_to_many :projects
  has_many :others
  # scope :critical_thinking, -> { where("skills = ? ", ("{Critical thinking}"))}
  scope :intern, -> { where("project_roles = ? ", ("{Intern}"))}
  scope :analyst, -> { where("project_roles = ? ", ("{Analyst}"))}
  scope :associate, -> { where("project_roles = ? ", ("{Associate}"))}
  scope :engagement_manager, -> { where("project_roles = ? ", ("{Engagement Manager}"))}
  scope :partner, -> { where("project_roles = ? ", ("{Partner}"))}
  scope :principal, -> { where("project_roles = ? ", ("{Principal}"))}

 #  filterrific(
 #   available_filters: [
 #     :intern,
 #     :analyst,
 #     :associate,
 #     :engagement_manager,
 #     :partner,
 #     :principal
 #   ]
 # )

  def self.get_data
    session = GoogleDrive::Session.from_service_account_key("client_secret.json")
    spreadsheet = session.spreadsheet_by_title("360 Feedback Form (Responses)")
    worksheet = spreadsheet.worksheets.first
    data = worksheet.rows.each { |row| puts row.join(" | ") }
  end

end
