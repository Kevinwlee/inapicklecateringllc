class EntreesController < ApplicationController
  # GET /entrees
  # GET /entrees.xml
  def index
    @entrees = Entree.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entrees }
    end
  end

  # GET /entrees/1
  # GET /entrees/1.xml
  def show
    @entree = Entree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entree }
    end
  end

  # GET /entrees/new
  # GET /entrees/new.xml
  def new
    @entree = Entree.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @entree }
    end
  end

  # GET /entrees/1/edit
  def edit
    @entree = Entree.find(params[:id])
  end

  # POST /entrees
  # POST /entrees.xml
  def create
    @entree = Entree.new(params[:entree])

    respond_to do |format|
      if @entree.save
        flash[:notice] = 'Entree was successfully created.'
        format.html { redirect_to(@entree) }
        format.xml  { render :xml => @entree, :status => :created, :location => @entree }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @entree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entrees/1
  # PUT /entrees/1.xml
  def update
    @entree = Entree.find(params[:id])

    respond_to do |format|
      if @entree.update_attributes(params[:entree])
        flash[:notice] = 'Entree was successfully updated.'
        format.html { redirect_to(@entree) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @entree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entrees/1
  # DELETE /entrees/1.xml
  def destroy
    @entree = Entree.find(params[:id])
    @entree.destroy

    respond_to do |format|
      format.html { redirect_to(entrees_url) }
      format.xml  { head :ok }
    end
  end
end
