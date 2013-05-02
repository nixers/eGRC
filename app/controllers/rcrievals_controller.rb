class RcrievalsController < ApplicationController
  # GET /rcrievals
  # GET /rcrievals.json
  def index
    @rcrievals = Rcrieval.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rcrievals }
    end
  end

  # GET /rcrievals/1
  # GET /rcrievals/1.json
  def show
    @rcrieval = Rcrieval.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rcrieval }
    end
  end

  # GET /rcrievals/new
  # GET /rcrievals/new.json
  def new
    @rcrieval = Rcrieval.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rcrieval }
    end
  end

  # GET /rcrievals/1/edit
  def edit
    @rcrieval = Rcrieval.find(params[:id])
  end

  # POST /rcrievals
  # POST /rcrievals.json
  def create
    @rcrieval = Rcrieval.new(params[:rcrieval])

    respond_to do |format|
      if @rcrieval.save
        format.html { redirect_to @rcrieval, notice: 'Rcrieval was successfully created.' }
        format.json { render json: @rcrieval, status: :created, location: @rcrieval }
      else
        format.html { render action: "new" }
        format.json { render json: @rcrieval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rcrievals/1
  # PUT /rcrievals/1.json
  def update
    @rcrieval = Rcrieval.find(params[:id])

    respond_to do |format|
      if @rcrieval.update_attributes(params[:rcrieval])
        format.html { redirect_to @rcrieval, notice: 'Rcrieval was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rcrieval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rcrievals/1
  # DELETE /rcrievals/1.json
  def destroy
    @rcrieval = Rcrieval.find(params[:id])
    @rcrieval.destroy

    respond_to do |format|
      format.html { redirect_to rcrievals_url }
      format.json { head :no_content }
    end
  end
end
