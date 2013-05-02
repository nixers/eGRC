class RgroupsController < ApplicationController
  # GET /rgroups
  # GET /rgroups.json
  def index
    @rgroups = Rgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rgroups }
    end
  end

  # GET /rgroups/1
  # GET /rgroups/1.json
  def show
    @rgroup = Rgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rgroup }
    end
  end

  # GET /rgroups/new
  # GET /rgroups/new.json
  def new
    @rgroup = Rgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rgroup }
    end
  end

  # GET /rgroups/1/edit
  def edit
    @rgroup = Rgroup.find(params[:id])
  end

  # POST /rgroups
  # POST /rgroups.json
  def create
    @rgroup = Rgroup.new(params[:rgroup])

    respond_to do |format|
      if @rgroup.save
        format.html { redirect_to @rgroup, notice: 'Rgroup was successfully created.' }
        format.json { render json: @rgroup, status: :created, location: @rgroup }
      else
        format.html { render action: "new" }
        format.json { render json: @rgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rgroups/1
  # PUT /rgroups/1.json
  def update
    @rgroup = Rgroup.find(params[:id])

    respond_to do |format|
      if @rgroup.update_attributes(params[:rgroup])
        format.html { redirect_to @rgroup, notice: 'Rgroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rgroups/1
  # DELETE /rgroups/1.json
  def destroy
    @rgroup = Rgroup.find(params[:id])
    @rgroup.destroy

    respond_to do |format|
      format.html { redirect_to rgroups_url }
      format.json { head :no_content }
    end
  end
end
