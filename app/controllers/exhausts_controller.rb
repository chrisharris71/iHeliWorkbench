class ExhaustsController < ApplicationController
  # GET /exhausts
  # GET /exhausts.json
  def index
    @exhausts = Exhaust.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exhausts }
    end
  end

  # GET /exhausts/1
  # GET /exhausts/1.json
  def show
    @exhaust = Exhaust.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exhaust }
    end
  end

  # GET /exhausts/new
  # GET /exhausts/new.json
  def new
    @exhaust = Exhaust.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exhaust }
    end
  end

  # GET /exhausts/1/edit
  def edit
    @exhaust = Exhaust.find(params[:id])
  end

  # POST /exhausts
  # POST /exhausts.json
  def create
    @exhaust = Exhaust.new(params[:exhaust])

    respond_to do |format|
      if @exhaust.save
        format.html { redirect_to @exhaust, notice: 'Exhaust was successfully created.' }
        format.json { render json: @exhaust, status: :created, location: @exhaust }
      else
        format.html { render action: "new" }
        format.json { render json: @exhaust.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exhausts/1
  # PUT /exhausts/1.json
  def update
    @exhaust = Exhaust.find(params[:id])

    respond_to do |format|
      if @exhaust.update_attributes(params[:exhaust])
        format.html { redirect_to @exhaust, notice: 'Exhaust was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exhaust.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhausts/1
  # DELETE /exhausts/1.json
  def destroy
    @exhaust = Exhaust.find(params[:id])
    @exhaust.destroy

    respond_to do |format|
      format.html { redirect_to exhausts_url }
      format.json { head :no_content }
    end
  end
end
