class FblUnitsController < ApplicationController
  # GET /fbl_units
  # GET /fbl_units.json
  def index
    @fbl_units = FblUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fbl_units }
    end
  end

  # GET /fbl_units/1
  # GET /fbl_units/1.json
  def show
    @fbl_unit = FblUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fbl_unit }
    end
  end

  # GET /fbl_units/new
  # GET /fbl_units/new.json
  def new
    @fbl_unit = FblUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fbl_unit }
    end
  end

  # GET /fbl_units/1/edit
  def edit
    @fbl_unit = FblUnit.find(params[:id])
  end

  # POST /fbl_units
  # POST /fbl_units.json
  def create
    @fbl_unit = FblUnit.new(params[:fbl_unit])

    respond_to do |format|
      if @fbl_unit.save
        format.html { redirect_to @fbl_unit, notice: 'Fbl unit was successfully created.' }
        format.json { render json: @fbl_unit, status: :created, location: @fbl_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @fbl_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fbl_units/1
  # PUT /fbl_units/1.json
  def update
    @fbl_unit = FblUnit.find(params[:id])

    respond_to do |format|
      if @fbl_unit.update_attributes(params[:fbl_unit])
        format.html { redirect_to @fbl_unit, notice: 'Fbl unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fbl_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fbl_units/1
  # DELETE /fbl_units/1.json
  def destroy
    @fbl_unit = FblUnit.find(params[:id])
    @fbl_unit.destroy

    respond_to do |format|
      format.html { redirect_to fbl_units_url }
      format.json { head :no_content }
    end
  end
end
