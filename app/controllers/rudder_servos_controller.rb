class RudderServosController < ApplicationController
  # GET /rudder_servos
  # GET /rudder_servos.json
  def index
    @rudder_servos = RudderServo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rudder_servos }
    end
  end

  # GET /rudder_servos/1
  # GET /rudder_servos/1.json
  def show
    @rudder_servo = RudderServo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rudder_servo }
    end
  end

  # GET /rudder_servos/new
  # GET /rudder_servos/new.json
  def new
    @rudder_servo = RudderServo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rudder_servo }
    end
  end

  # GET /rudder_servos/1/edit
  def edit
    @rudder_servo = RudderServo.find(params[:id])
  end

  # POST /rudder_servos
  # POST /rudder_servos.json
  def create
    @rudder_servo = RudderServo.new(params[:rudder_servo])

    respond_to do |format|
      if @rudder_servo.save
        format.html { redirect_to @rudder_servo, notice: 'Rudder servo was successfully created.' }
        format.json { render json: @rudder_servo, status: :created, location: @rudder_servo }
      else
        format.html { render action: "new" }
        format.json { render json: @rudder_servo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rudder_servos/1
  # PUT /rudder_servos/1.json
  def update
    @rudder_servo = RudderServo.find(params[:id])

    respond_to do |format|
      if @rudder_servo.update_attributes(params[:rudder_servo])
        format.html { redirect_to @rudder_servo, notice: 'Rudder servo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rudder_servo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rudder_servos/1
  # DELETE /rudder_servos/1.json
  def destroy
    @rudder_servo = RudderServo.find(params[:id])
    @rudder_servo.destroy

    respond_to do |format|
      format.html { redirect_to rudder_servos_url }
      format.json { head :no_content }
    end
  end
end
