class PublishesController < ApplicationController
  # GET /publishes
  # GET /publishes.json
  def index
    @publishes = Publish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @publishes }
    end
  end

  # GET /publishes/1
  # GET /publishes/1.json
  def show
    @publish = Publish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @publish }
    end
  end

  # GET /publishes/new
  # GET /publishes/new.json
  def new
    @publish = Publish.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @publish }
    end
  end

  # GET /publishes/1/edit
  def edit
    @publish = Publish.find(params[:id])
  end

  # POST /publishes
  # POST /publishes.json
  def create
    @publish = Publish.new(params[:publish])

    respond_to do |format|
      if @publish.save
        format.html { redirect_to @publish, notice: 'Publish was successfully created.' }
        format.json { render json: @publish, status: :created, location: @publish }
      else
        format.html { render action: "new" }
        format.json { render json: @publish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /publishes/1
  # PUT /publishes/1.json
  def update
    @publish = Publish.find(params[:id])

    respond_to do |format|
      if @publish.update_attributes(params[:publish])
        format.html { redirect_to @publish, notice: 'Publish was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @publish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publishes/1
  # DELETE /publishes/1.json
  def destroy
    @publish = Publish.find(params[:id])
    @publish.destroy

    respond_to do |format|
      format.html { redirect_to publishes_url }
      format.json { head :no_content }
    end
  end
end
