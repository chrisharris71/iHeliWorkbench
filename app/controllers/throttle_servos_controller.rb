class ThrottleServosController < ApplicationController
  # GET /throttle_servos
  # GET /throttle_servos.json
  def index
    @throttle_servos = ThrottleServo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @throttle_servos }
    end
  end

  # GET /throttle_servos/1
  # GET /throttle_servos/1.json
  def show
    @throttle_servo = ThrottleServo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @throttle_servo }
    end
  end

  # GET /throttle_servos/new
  # GET /throttle_servos/new.json
  def new
    @throttle_servo = ThrottleServo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @throttle_servo }
    end
  end

  # GET /throttle_servos/1/edit
  def edit
    @throttle_servo = ThrottleServo.find(params[:id])
  end

  # POST /throttle_servos
  # POST /throttle_servos.json
  def create
    @throttle_servo = ThrottleServo.new(params[:throttle_servo])

    respond_to do |format|
      if @throttle_servo.save
        format.html { redirect_to @throttle_servo, notice: 'Throttle servo was successfully created.' }
        format.json { render json: @throttle_servo, status: :created, location: @throttle_servo }
      else
        format.html { render action: "new" }
        format.json { render json: @throttle_servo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /throttle_servos/1
  # PUT /throttle_servos/1.json
  def update
    @throttle_servo = ThrottleServo.find(params[:id])

    respond_to do |format|
      if @throttle_servo.update_attributes(params[:throttle_servo])
        format.html { redirect_to @throttle_servo, notice: 'Throttle servo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @throttle_servo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /throttle_servos/1
  # DELETE /throttle_servos/1.json
  def destroy
    @throttle_servo = ThrottleServo.find(params[:id])
    @throttle_servo.destroy

    respond_to do |format|
      format.html { redirect_to throttle_servos_url }
      format.json { head :no_content }
    end
  end
end
