class CreateEmployeeProfiles < ActiveRecord::Migration
  def change
    create_table :employee_profiles do |t|
      t.integer :employee_id
      t.integer :height # => height in inches
      t.string :fav_food
      t.string :fav_day
      t.date :birthday
      t.integer :salary
      t.string :photo_url
      t.timestamps
    end
    add_index :employee_profiles, :employee_id
  end
end
