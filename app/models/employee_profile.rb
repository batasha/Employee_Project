class EmployeeProfile < ActiveRecord::Base
  attr_accessible :height, :fav_food, :fav_day, :birthday,
                  :salary, :photo_url, :employee_id

  belongs_to :employee

  def age
    total_seconds = Time.now - birthday
    seconds_in_year = 365.25 * 24 * 60 * 60
    (total_seconds / seconds_in_year).to_i
  end
end