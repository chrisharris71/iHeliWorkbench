class ElecMotorsController < ApplicationController
  # GET /elec_motors
  # GET /elec_motors.json
  def index
    @elec_motors = ElecMotor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @elec_motors }
    end
  end

  # GET /elec_motors/1
  # GET /elec_motors/1.json
  def show
    @elec_motor = ElecMotor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @elec_motor }
    end
  end

  # GET /elec_motors/new
  # GET /elec_motors/new.json
  def new
    @elec_motor = ElecMotor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @elec_motor }
    end
  end

  # GET /elec_motors/1/edit
  def edit
    @elec_motor = ElecMotor.find(params[:id])
  end

  # POST /elec_motors
  # POST /elec_motors.json
  def create
    @elec_motor = ElecMotor.new(params[:elec_motor])

    respond_to do |format|
      if @elec_motor.save
        format.html { redirect_to @elec_motor, notice: 'Elec motor was successfully created.' }
        format.json { render json: @elec_motor, status: :created, location: @elec_motor }
      else
        format.html { render action: "new" }
        format.json { render json: @elec_motor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /elec_motors/1
  # PUT /elec_motors/1.json
  def update
    @elec_motor = ElecMotor.find(params[:id])

    respond_to do |format|
      if @elec_motor.update_attributes(params[:elec_motor])
        format.html { redirect_to @elec_motor, notice: 'Elec motor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @elec_motor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elec_motors/1
  # DELETE /elec_motors/1.json
  def destroy
    @elec_motor = ElecMotor.find(params[:id])
    @elec_motor.destroy

    respond_to do |format|
      format.html { redirect_to elec_motors_url }
      format.json { head :no_content }
    end
  end
end
