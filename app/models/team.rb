class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id

  has_many :team_memberships
  has_many :employees, :through => :team_memberships
  belongs_to  :supervisor, :class_name => "Employee",
              :inverse_of => :supervised_teams
end