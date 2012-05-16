class RudderGyrosController < ApplicationController
  # GET /rudder_gyros
  # GET /rudder_gyros.json
  def index
    @rudder_gyros = RudderGyro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rudder_gyros }
    end
  end

  # GET /rudder_gyros/1
  # GET /rudder_gyros/1.json
  def show
    @rudder_gyro = RudderGyro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rudder_gyro }
    end
  end

  # GET /rudder_gyros/new
  # GET /rudder_gyros/new.json
  def new
    @rudder_gyro = RudderGyro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rudder_gyro }
    end
  end

  # GET /rudder_gyros/1/edit
  def edit
    @rudder_gyro = RudderGyro.find(params[:id])
  end

  # POST /rudder_gyros
  # POST /rudder_gyros.json
  def create
    @rudder_gyro = RudderGyro.new(params[:rudder_gyro])

    respond_to do |format|
      if @rudder_gyro.save
        format.html { redirect_to @rudder_gyro, notice: 'Rudder gyro was successfully created.' }
        format.json { render json: @rudder_gyro, status: :created, location: @rudder_gyro }
      else
        format.html { render action: "new" }
        format.json { render json: @rudder_gyro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rudder_gyros/1
  # PUT /rudder_gyros/1.json
  def update
    @rudder_gyro = RudderGyro.find(params[:id])

    respond_to do |format|
      if @rudder_gyro.update_attributes(params[:rudder_gyro])
        format.html { redirect_to @rudder_gyro, notice: 'Rudder gyro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rudder_gyro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rudder_gyros/1
  # DELETE /rudder_gyros/1.json
  def destroy
    @rudder_gyro = RudderGyro.find(params[:id])
    @rudder_gyro.destroy

    respond_to do |format|
      format.html { redirect_to rudder_gyros_url }
      format.json { head :no_content }
    end
  end
end
