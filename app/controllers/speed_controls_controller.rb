class SpeedControlsController < ApplicationController
  # GET /speed_controls
  # GET /speed_controls.json
  def index
    @speed_controls = SpeedControl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @speed_controls }
    end
  end

  # GET /speed_controls/1
  # GET /speed_controls/1.json
  def show
    @speed_control = SpeedControl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @speed_control }
    end
  end

  # GET /speed_controls/new
  # GET /speed_controls/new.json
  def new
    @speed_control = SpeedControl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @speed_control }
    end
  end

  # GET /speed_controls/1/edit
  def edit
    @speed_control = SpeedControl.find(params[:id])
  end

  # POST /speed_controls
  # POST /speed_controls.json
  def create
    @speed_control = SpeedControl.new(params[:speed_control])

    respond_to do |format|
      if @speed_control.save
        format.html { redirect_to @speed_control, notice: 'Speed control was successfully created.' }
        format.json { render json: @speed_control, status: :created, location: @speed_control }
      else
        format.html { render action: "new" }
        format.json { render json: @speed_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /speed_controls/1
  # PUT /speed_controls/1.json
  def update
    @speed_control = SpeedControl.find(params[:id])

    respond_to do |format|
      if @speed_control.update_attributes(params[:speed_control])
        format.html { redirect_to @speed_control, notice: 'Speed control was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @speed_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speed_controls/1
  # DELETE /speed_controls/1.json
  def destroy
    @speed_control = SpeedControl.find(params[:id])
    @speed_control.destroy

    respond_to do |format|
      format.html { redirect_to speed_controls_url }
      format.json { head :no_content }
    end
  end
end
