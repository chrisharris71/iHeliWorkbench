class MainBladesController < ApplicationController
  # GET /main_blades
  # GET /main_blades.json
  def index
    @main_blades = MainBlade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @main_blades }
    end
  end

  # GET /main_blades/1
  # GET /main_blades/1.json
  def show
    @main_blade = MainBlade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @main_blade }
    end
  end

  # GET /main_blades/new
  # GET /main_blades/new.json
  def new
    @main_blade = MainBlade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @main_blade }
    end
  end

  # GET /main_blades/1/edit
  def edit
    @main_blade = MainBlade.find(params[:id])
  end

  # POST /main_blades
  # POST /main_blades.json
  def create
    @main_blade = MainBlade.new(params[:main_blade])

    respond_to do |format|
      if @main_blade.save
        format.html { redirect_to @main_blade, notice: 'Main blade was successfully created.' }
        format.json { render json: @main_blade, status: :created, location: @main_blade }
      else
        format.html { render action: "new" }
        format.json { render json: @main_blade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /main_blades/1
  # PUT /main_blades/1.json
  def update
    @main_blade = MainBlade.find(params[:id])

    respond_to do |format|
      if @main_blade.update_attributes(params[:main_blade])
        format.html { redirect_to @main_blade, notice: 'Main blade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @main_blade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_blades/1
  # DELETE /main_blades/1.json
  def destroy
    @main_blade = MainBlade.find(params[:id])
    @main_blade.destroy

    respond_to do |format|
      format.html { redirect_to main_blades_url }
      format.json { head :no_content }
    end
  end
end
