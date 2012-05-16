class CyclicServosController < ApplicationController
  # GET /cyclic_servos
  # GET /cyclic_servos.json
  def index
    @cyclic_servos = CyclicServo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cyclic_servos }
    end
  end

  # GET /cyclic_servos/1
  # GET /cyclic_servos/1.json
  def show
    @cyclic_servo = CyclicServo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cyclic_servo }
    end
  end

  # GET /cyclic_servos/new
  # GET /cyclic_servos/new.json
  def new
    @cyclic_servo = CyclicServo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cyclic_servo }
    end
  end

  # GET /cyclic_servos/1/edit
  def edit
    @cyclic_servo = CyclicServo.find(params[:id])
  end

  # POST /cyclic_servos
  # POST /cyclic_servos.json
  def create
    @cyclic_servo = CyclicServo.new(params[:cyclic_servo])

    respond_to do |format|
      if @cyclic_servo.save
        format.html { redirect_to @cyclic_servo, notice: 'Cyclic servo was successfully created.' }
        format.json { render json: @cyclic_servo, status: :created, location: @cyclic_servo }
      else
        format.html { render action: "new" }
        format.json { render json: @cyclic_servo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cyclic_servos/1
  # PUT /cyclic_servos/1.json
  def update
    @cyclic_servo = CyclicServo.find(params[:id])

    respond_to do |format|
      if @cyclic_servo.update_attributes(params[:cyclic_servo])
        format.html { redirect_to @cyclic_servo, notice: 'Cyclic servo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cyclic_servo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cyclic_servos/1
  # DELETE /cyclic_servos/1.json
  def destroy
    @cyclic_servo = CyclicServo.find(params[:id])
    @cyclic_servo.destroy

    respond_to do |format|
      format.html { redirect_to cyclic_servos_url }
      format.json { head :no_content }
    end
  end
end
