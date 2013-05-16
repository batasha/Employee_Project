class Employee < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :subordinate_ids

  has_many :subordinates, :class_name => "Employee",
           :foreign_key => :supervisor_id

  belongs_to :supervisor, :class_name => "Employee"

  validates :name, :presence => true
end