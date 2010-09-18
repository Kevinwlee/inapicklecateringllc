module MealsHelper
  def add_entree_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :jq_entrees, :partial => 'entree', :object => Entree.new
    end
  end
  def add_side_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :jq_sides, :partial => 'side', :object => Side.new
    end
  end
  def add_other_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :jq_others, :partial => 'other', :object => Dressing.new
    end
  end
end
