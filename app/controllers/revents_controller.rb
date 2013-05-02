class ReventsController < ApplicationController
  # GET /revents
  # GET /revents.json
  def index
    @revents = Revent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @revents }
    end
  end

  # GET /revents/1
  # GET /revents/1.json
  def show
    @revent = Revent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @revent }
    end
  end

  # GET /revents/new
  # GET /revents/new.json
  def new
    @revent = Revent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @revent }
    end
  end

  # GET /revents/1/edit
  def edit
    @revent = Revent.find(params[:id])
  end

  # POST /revents
  # POST /revents.json
  def create
    @revent = Revent.new(params[:revent])

    respond_to do |format|
      if @revent.save
        format.html { redirect_to @revent, notice: 'Revent was successfully created.' }
        format.json { render json: @revent, status: :created, location: @revent }
      else
        format.html { render action: "new" }
        format.json { render json: @revent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /revents/1
  # PUT /revents/1.json
  def update
    @revent = Revent.find(params[:id])

    respond_to do |format|
      if @revent.update_attributes(params[:revent])
        format.html { redirect_to @revent, notice: 'Revent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @revent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revents/1
  # DELETE /revents/1.json
  def destroy
    @revent = Revent.find(params[:id])
    @revent.destroy

    respond_to do |format|
      format.html { redirect_to revents_url }
      format.json { head :no_content }
    end
  end
end
