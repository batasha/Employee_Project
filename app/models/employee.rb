class Employee < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :subordinate_ids, :supervised_team_ids

  has_many :subordinates, :class_name => "Employee",
           :foreign_key => :supervisor_id

  belongs_to :supervisor, :class_name => "Employee"

  has_many :supervised_teams, :class_name => "Team",
           :inverse_of => :supervisor,
           :foreign_key => :supervisor_id

  has_one :employee_profile

  has_many :team_memberships
  has_many :teams, :through => :team_memberships

  validates :name, :presence => true
end