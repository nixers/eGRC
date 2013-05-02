class AreportsController < ApplicationController
  # GET /areports
  # GET /areports.json
  def index
    @areports = Areport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @areports }
    end
  end

  # GET /areports/1
  # GET /areports/1.json
  def show
    @areport = Areport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @areport }
    end
  end

  # GET /areports/new
  # GET /areports/new.json
  def new
    @areport = Areport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @areport }
    end
  end

  # GET /areports/1/edit
  def edit
    @areport = Areport.find(params[:id])
  end

  # POST /areports
  # POST /areports.json
  def create
    @areport = Areport.new(params[:areport])

    respond_to do |format|
      if @areport.save
        format.html { redirect_to @areport, notice: 'Areport was successfully created.' }
        format.json { render json: @areport, status: :created, location: @areport }
      else
        format.html { render action: "new" }
        format.json { render json: @areport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /areports/1
  # PUT /areports/1.json
  def update
    @areport = Areport.find(params[:id])

    respond_to do |format|
      if @areport.update_attributes(params[:areport])
        format.html { redirect_to @areport, notice: 'Areport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @areport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /areports/1
  # DELETE /areports/1.json
  def destroy
    @areport = Areport.find(params[:id])
    @areport.destroy

    respond_to do |format|
      format.html { redirect_to areports_url }
      format.json { head :no_content }
    end
  end
end
