class HeliKitsController < ApplicationController
  # GET /heli_kits
  # GET /heli_kits.json
  def index
    @heli_kits = HeliKit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @heli_kits }
    end
  end

  # GET /heli_kits/1
  # GET /heli_kits/1.json
  def show
    @heli_kit = HeliKit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @heli_kit }
    end
  end

  # GET /heli_kits/new
  # GET /heli_kits/new.json
  def new
    @heli_kit = HeliKit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @heli_kit }
    end
  end

  # GET /heli_kits/1/edit
  def edit
    @heli_kit = HeliKit.find(params[:id])
  end

  # POST /heli_kits
  # POST /heli_kits.json
  def create
    @heli_kit = HeliKit.new(params[:heli_kit])

    respond_to do |format|
      if @heli_kit.save
        format.html { redirect_to @heli_kit, notice: 'Heli kit was successfully created.' }
        format.json { render json: @heli_kit, status: :created, location: @heli_kit }
      else
        format.html { render action: "new" }
        format.json { render json: @heli_kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /heli_kits/1
  # PUT /heli_kits/1.json
  def update
    @heli_kit = HeliKit.find(params[:id])

    respond_to do |format|
      if @heli_kit.update_attributes(params[:heli_kit])
        format.html { redirect_to @heli_kit, notice: 'Heli kit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @heli_kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heli_kits/1
  # DELETE /heli_kits/1.json
  def destroy
    @heli_kit = HeliKit.find(params[:id])
    @heli_kit.destroy

    respond_to do |format|
      format.html { redirect_to heli_kits_url }
      format.json { head :no_content }
    end
  end
end
