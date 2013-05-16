class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id

  has_many :team_memberships
  has_many :members, :through => :team_memberships,
           :source => :employee
  belongs_to  :supervisor, :class_name => "Employee",
              :inverse_of => :supervised_teams
end