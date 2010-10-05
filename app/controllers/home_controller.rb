class HomeController < ApplicationController
  def index
    @meals = Meal.find(:all,:conditions =>{:published =>true}, :limit=>3)
    
  end

  def about
  end

end
