class AactiosController < ApplicationController
  # GET /aactios
  # GET /aactios.json
  def index
    @aactios = Aactio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aactios }
    end
  end

  # GET /aactios/1
  # GET /aactios/1.json
  def show
    @aactio = Aactio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aactio }
    end
  end

  # GET /aactios/new
  # GET /aactios/new.json
  def new
    @aactio = Aactio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aactio }
    end
  end

  # GET /aactios/1/edit
  def edit
    @aactio = Aactio.find(params[:id])
  end

  # POST /aactios
  # POST /aactios.json
  def create
    @aactio = Aactio.new(params[:aactio])

    respond_to do |format|
      if @aactio.save
        format.html { redirect_to @aactio, notice: 'Aactio was successfully created.' }
        format.json { render json: @aactio, status: :created, location: @aactio }
      else
        format.html { render action: "new" }
        format.json { render json: @aactio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aactios/1
  # PUT /aactios/1.json
  def update
    @aactio = Aactio.find(params[:id])

    respond_to do |format|
      if @aactio.update_attributes(params[:aactio])
        format.html { redirect_to @aactio, notice: 'Aactio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aactio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aactios/1
  # DELETE /aactios/1.json
  def destroy
    @aactio = Aactio.find(params[:id])
    @aactio.destroy

    respond_to do |format|
      format.html { redirect_to aactios_url }
      format.json { head :no_content }
    end
  end
end
