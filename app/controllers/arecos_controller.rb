class ArecosController < ApplicationController
  # GET /arecos
  # GET /arecos.json
  def index
    @arecos = Areco.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @arecos }
    end
  end

  # GET /arecos/1
  # GET /arecos/1.json
  def show
    @areco = Areco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @areco }
    end
  end

  # GET /arecos/new
  # GET /arecos/new.json
  def new
    @areco = Areco.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @areco }
    end
  end

  # GET /arecos/1/edit
  def edit
    @areco = Areco.find(params[:id])
  end

  # POST /arecos
  # POST /arecos.json
  def create
    @areco = Areco.new(params[:areco])

    respond_to do |format|
      if @areco.save
        format.html { redirect_to @areco, notice: 'Areco was successfully created.' }
        format.json { render json: @areco, status: :created, location: @areco }
      else
        format.html { render action: "new" }
        format.json { render json: @areco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /arecos/1
  # PUT /arecos/1.json
  def update
    @areco = Areco.find(params[:id])

    respond_to do |format|
      if @areco.update_attributes(params[:areco])
        format.html { redirect_to @areco, notice: 'Areco was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @areco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arecos/1
  # DELETE /arecos/1.json
  def destroy
    @areco = Areco.find(params[:id])
    @areco.destroy

    respond_to do |format|
      format.html { redirect_to arecos_url }
      format.json { head :no_content }
    end
  end
end
