require 'bundler'
Bundler.require

class Employee < ApplicationRecord
  has_and_belongs_to_many :projects
  has_many :others

  scope :flexible, -> { where("skills = ? ", ("{Flexible}"))}
  scope :team_player, -> { where("skills = ? ", ("{Team Player}"))}
  scope :adaptable, -> { where("skills = ? ", ("{Adaptable}"))}
  scope :accountable, -> { where("skills = ? ", ("{Accountable}"))}
  scope :problem_solver, -> { where("skills = ? ", ("{Problem Solver}"))}
  scope :critical_thinker, -> { where("skills = ? ", ("{Critial Thinker}"))}
  scope :problem_writer, -> { where("skills = ? ", ("{Problem Definition Writer}"))}
  scope :experimenter, -> { where("skills = ? ", ("{Experimenter}"))}
  scope :interview_designer, -> { where("skills = ? ", ("{Interview Designer}"))}
  scope :interview_conductor, -> { where("skills = ? ", ("{Interview Conductor}"))}
  scope :survey_designer, -> { where("skills = ? ", ("{Survey Designer}"))}
  scope :isr_synthesizer, -> { where("skills = ? ", ("{Interview/Survey/Research Synthesizer}"))}
  scope :crm_producer, -> { where("skills = ? ", ("{Client Ready Material Producer}"))}
  scope :tool_developer, -> { where("skills = ? ", ("{Tool Developer}"))}
  scope :process_improver, -> { where("skills = ? ", ("{Process Improver}"))}
  scope :team_leader, -> { where("skills = ? ", ("{Team Leader}"))}

  def self.get_data
    session = GoogleDrive::Session.from_service_account_key("client_secret.json")
    spreadsheet = session.spreadsheet_by_title("360 Feedback Form (Responses)")
    worksheet = spreadsheet.worksheets.first
    data = worksheet.rows.each { |row| puts row.join(" | ") }
  end

end
