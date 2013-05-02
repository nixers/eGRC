class RcausesController < ApplicationController
  # GET /rcauses
  # GET /rcauses.json
  def index
    @rcauses = Rcause.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rcauses }
    end
  end

  # GET /rcauses/1
  # GET /rcauses/1.json
  def show
    @rcause = Rcause.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rcause }
    end
  end

  # GET /rcauses/new
  # GET /rcauses/new.json
  def new
    @rcause = Rcause.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rcause }
    end
  end

  # GET /rcauses/1/edit
  def edit
    @rcause = Rcause.find(params[:id])
  end

  # POST /rcauses
  # POST /rcauses.json
  def create
    @rcause = Rcause.new(params[:rcause])

    respond_to do |format|
      if @rcause.save
        format.html { redirect_to @rcause, notice: 'Rcause was successfully created.' }
        format.json { render json: @rcause, status: :created, location: @rcause }
      else
        format.html { render action: "new" }
        format.json { render json: @rcause.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rcauses/1
  # PUT /rcauses/1.json
  def update
    @rcause = Rcause.find(params[:id])

    respond_to do |format|
      if @rcause.update_attributes(params[:rcause])
        format.html { redirect_to @rcause, notice: 'Rcause was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rcause.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rcauses/1
  # DELETE /rcauses/1.json
  def destroy
    @rcause = Rcause.find(params[:id])
    @rcause.destroy

    respond_to do |format|
      format.html { redirect_to rcauses_url }
      format.json { head :no_content }
    end
  end
end
