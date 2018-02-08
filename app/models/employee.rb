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

  filterrific(
   default_filter_params: { sorted_by: 'created_at_desc' },
   available_filters: [
     :sorted_by,
     :search_query,
     :with_country_id,
     :with_created_at_gte,
     :with_skill,
     :with_project,
     :with_project_role
   ]
 )

scope :search_query, lambda { |query|
  return nil if query.blank?
  terms = query.downcase.split(/\s+/)
  # replace "*" with "%" for wildcard searches,
  # append '%', remove duplicare '%'s
  terms = terms.map { |e|
    (e.gsub('*', '%') + '%').gsub(/%+/, '%')
  }
  num_or_conditions = 1
  where(
  terms.map {
    or_clauses = [
      "LOWER(employees.name) LIKE ?"
    ].join(' OR ')
    "(#{ or_clauses })"
  }.join(' AND '),
    *terms.map { |e| [e] * num_or_conditions }.flatten
  )
}

scope :sorted_by, lambda { |sort_option|
  direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
  case sort_option.to_s
  when /^created_at_/
    order("employees.created_at #{ direction }")
  when /^name_/
    order("LOWER(employees.name) #{ direction }")
  else
    raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect}")
  end
}

 scope :with_skill, lambda { |skill_ids|
  where(:skill_id => [*skill_ids])
}

scope :with_project, lambda { |project_ids|
 where(:project_id => [*project_ids])
}

scope :with_project_role, lambda { |project_role|
  where(:project_role => [*employee.project_role])
}

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
