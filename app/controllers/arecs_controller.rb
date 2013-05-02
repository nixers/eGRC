class ArecsController < ApplicationController
  # GET /arecs
  # GET /arecs.json
  def index
    @arecs = Arec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @arecs }
    end
  end

  # GET /arecs/1
  # GET /arecs/1.json
  def show
    @arec = Arec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @arec }
    end
  end

  # GET /arecs/new
  # GET /arecs/new.json
  def new
    @arec = Arec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @arec }
    end
  end

  # GET /arecs/1/edit
  def edit
    @arec = Arec.find(params[:id])
  end

  # POST /arecs
  # POST /arecs.json
  def create
    @arec = Arec.new(params[:arec])

    respond_to do |format|
      if @arec.save
        format.html { redirect_to @arec, notice: 'Arec was successfully created.' }
        format.json { render json: @arec, status: :created, location: @arec }
      else
        format.html { render action: "new" }
        format.json { render json: @arec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /arecs/1
  # PUT /arecs/1.json
  def update
    @arec = Arec.find(params[:id])

    respond_to do |format|
      if @arec.update_attributes(params[:arec])
        format.html { redirect_to @arec, notice: 'Arec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @arec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arecs/1
  # DELETE /arecs/1.json
  def destroy
    @arec = Arec.find(params[:id])
    @arec.destroy

    respond_to do |format|
      format.html { redirect_to arecs_url }
      format.json { head :no_content }
    end
  end
end
