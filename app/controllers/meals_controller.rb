class MealsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  # GET /meals
  # GET /meals.xml
  def index
    @meals = Meal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meals }
    end
  end

  # GET /meals/1
  # GET /meals/1.xml
  def show
    @meal = Meal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meal }
    end
  end

  # GET /meals/new
  # GET /meals/new.xml
  def new
    @meal = Meal.new
    2.times { @meal.entrees.build }
    3.times { @meal.side_items.build}
    3.times { @meal.other_items.build}
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meal }
    end
  end

  # GET /meals/1/edit
  def edit
    @meal = Meal.find(params[:id])
    @sides = Side.all
    @entrees = Entree.all
  end

  # POST /meals
  # POST /meals.xml
  def create
    @meal = Meal.new(params[:meal])

    respond_to do |format|
      if @meal.save
        flash[:notice] = 'Meal was successfully created.'
        format.html { redirect_to(@meal) }
        format.xml  { render :xml => @meal, :status => :created, :location => @meal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meals/1
  # PUT /meals/1.xml
  def update
    @meal = Meal.find(params[:id])

    respond_to do |format|
      if @meal.update_attributes(params[:meal])
        flash[:notice] = 'Meal was successfully updated.'
        format.html { redirect_to(@meal) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.xml
  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy

    respond_to do |format|
      format.html { redirect_to(meals_url) }
      format.xml  { head :ok }
    end
  end
end
