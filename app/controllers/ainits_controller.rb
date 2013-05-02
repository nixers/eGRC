class AinitsController < ApplicationController
  # GET /ainits
  # GET /ainits.json
  def index
    @ainits = Ainit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ainits }
    end
  end

  # GET /ainits/1
  # GET /ainits/1.json
  def show
    @ainit = Ainit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ainit }
    end
  end

  # GET /ainits/new
  # GET /ainits/new.json
  def new
    @ainit = Ainit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ainit }
    end
  end

  # GET /ainits/1/edit
  def edit
    @ainit = Ainit.find(params[:id])
  end

  # POST /ainits
  # POST /ainits.json
  def create
    @ainit = Ainit.new(params[:ainit])

    respond_to do |format|
      if @ainit.save
        format.html { redirect_to @ainit, notice: 'Audit was successfully created.' }
        format.json { render json: @ainit, status: :created, location: @ainit }
      else
        format.html { render action: "new" }
        format.json { render json: @ainit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ainits/1
  # PUT /ainits/1.json
  def update
    @ainit = Ainit.find(params[:id])

    respond_to do |format|
      if @ainit.update_attributes(params[:ainit])
        format.html { redirect_to @ainit, notice: 'Audit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ainit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ainits/1
  # DELETE /ainits/1.json
  def destroy
    @ainit = Ainit.find(params[:id])
    @ainit.destroy

    respond_to do |format|
      format.html { redirect_to ainits_url }
      format.json { head :no_content }
    end
  end
end
