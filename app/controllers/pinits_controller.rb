class PinitsController < ApplicationController
  # GET /pinits
  # GET /pinits.json
  def index
    @pinits = Pinit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pinits }
    end
  end

  # GET /pinits/1
  # GET /pinits/1.json
  def show
    @pinit = Pinit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pinit }
    end
  end

  # GET /pinits/new
  # GET /pinits/new.json
  def new
    @pinit = Pinit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pinit }
    end
  end

  # GET /pinits/1/edit
  def edit
    @pinit = Pinit.find(params[:id])
  end

  # POST /pinits
  # POST /pinits.json
  def create
    @pinit = Pinit.new(params[:pinit])

    respond_to do |format|
      if @pinit.save
        format.html { redirect_to @pinit, notice: 'Pinit was successfully created.' }
        format.json { render json: @pinit, status: :created, location: @pinit }
      else
        format.html { render action: "new" }
        format.json { render json: @pinit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pinits/1
  # PUT /pinits/1.json
  def update
    @pinit = Pinit.find(params[:id])

    respond_to do |format|
      if @pinit.update_attributes(params[:pinit])
        format.html { redirect_to @pinit, notice: 'Pinit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pinit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pinits/1
  # DELETE /pinits/1.json
  def destroy
    @pinit = Pinit.find(params[:id])
    @pinit.destroy

    respond_to do |format|
      format.html { redirect_to pinits_url }
      format.json { head :no_content }
    end
  end
end
