class Dressing < ActiveRecord::Base
      belongs_to :meal, :class_name => "Meal", :foreign_key => "meal_id"
end
