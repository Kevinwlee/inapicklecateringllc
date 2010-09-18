class Meal < ActiveRecord::Base
  has_many :entrees, :class_name => "Entree", :foreign_key => "meal_id"
  has_many :side_items, :class_name => "Side", :foreign_key => "meal_id"
  has_many :other_items, :class_name => "Side", :foreign_key => "meal_id"
  
  def entree_attributes=(entree_attributes)
    entree_attributes.each do |attributes|
      entrees.build(attributes)
    end
  end
  def side_attributes=(side_attributes)
    side_attributes.each do |attributes|
      side_items.build(attributes)
    end
  end
  def other_attributes=(other_attributes)
    other_attributes.each do |attributes|
      other_items.build(attributes)
    end
  end
end
