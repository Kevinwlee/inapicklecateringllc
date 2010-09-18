class SidesController < ApplicationController
  # GET /sides
  # GET /sides.xml
  def index
    @sides = Side.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sides }
    end
  end

  # GET /sides/1
  # GET /sides/1.xml
  def show
    @side = Side.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @side }
    end
  end

  # GET /sides/new
  # GET /sides/new.xml
  def new
    @side = Side.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @side }
    end
  end

  # GET /sides/1/edit
  def edit
    @side = Side.find(params[:id])
  end

  # POST /sides
  # POST /sides.xml
  def create
    @side = Side.new(params[:side])

    respond_to do |format|
      if @side.save
        flash[:notice] = 'Side was successfully created.'
        format.html { redirect_to(@side) }
        format.xml  { render :xml => @side, :status => :created, :location => @side }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @side.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sides/1
  # PUT /sides/1.xml
  def update
    @side = Side.find(params[:id])

    respond_to do |format|
      if @side.update_attributes(params[:side])
        flash[:notice] = 'Side was successfully updated.'
        format.html { redirect_to(@side) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @side.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sides/1
  # DELETE /sides/1.xml
  def destroy
    @side = Side.find(params[:id])
    @side.destroy

    respond_to do |format|
      format.html { redirect_to(sides_url) }
      format.xml  { head :ok }
    end
  end
end
