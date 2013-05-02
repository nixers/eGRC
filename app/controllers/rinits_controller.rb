class RinitsController < ApplicationController
  # GET /rinits
  # GET /rinits.json
  def index
    @rinits = Rinit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rinits }
    end
  end

  # GET /rinits/1
  # GET /rinits/1.json
  def show
    @rinit = Rinit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rinit }
    end
  end

  # GET /rinits/new
  # GET /rinits/new.json
  def new
    @rinit = Rinit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rinit }
    end
  end

  # GET /rinits/1/edit
  def edit
    @rinit = Rinit.find(params[:id])
  end

  # POST /rinits
  # POST /rinits.json
  def create
    @rinit = Rinit.new(params[:rinit])

    respond_to do |format|
      if @rinit.save
        format.html { redirect_to @rinit, notice: 'Risk was successfully created.' }
        format.json { render json: @rinit, status: :created, location: @rinit }
      else
        format.html { render action: "new" }
        format.json { render json: @rinit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rinits/1
  # PUT /rinits/1.json
  def update
    @rinit = Rinit.find(params[:id])

    respond_to do |format|
      if @rinit.update_attributes(params[:rinit])
        format.html { redirect_to @rinit, notice: 'Risk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rinit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rinits/1
  # DELETE /rinits/1.json
  def destroy
    @rinit = Rinit.find(params[:id])
    @rinit.destroy

    respond_to do |format|
      format.html { redirect_to rinits_url }
      format.json { head :no_content }
    end
  end
end
