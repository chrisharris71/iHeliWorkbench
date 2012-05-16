class TailBladesController < ApplicationController
  # GET /tail_blades
  # GET /tail_blades.json
  def index
    @tail_blades = TailBlade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tail_blades }
    end
  end

  # GET /tail_blades/1
  # GET /tail_blades/1.json
  def show
    @tail_blade = TailBlade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tail_blade }
    end
  end

  # GET /tail_blades/new
  # GET /tail_blades/new.json
  def new
    @tail_blade = TailBlade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tail_blade }
    end
  end

  # GET /tail_blades/1/edit
  def edit
    @tail_blade = TailBlade.find(params[:id])
  end

  # POST /tail_blades
  # POST /tail_blades.json
  def create
    @tail_blade = TailBlade.new(params[:tail_blade])

    respond_to do |format|
      if @tail_blade.save
        format.html { redirect_to @tail_blade, notice: 'Tail blade was successfully created.' }
        format.json { render json: @tail_blade, status: :created, location: @tail_blade }
      else
        format.html { render action: "new" }
        format.json { render json: @tail_blade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tail_blades/1
  # PUT /tail_blades/1.json
  def update
    @tail_blade = TailBlade.find(params[:id])

    respond_to do |format|
      if @tail_blade.update_attributes(params[:tail_blade])
        format.html { redirect_to @tail_blade, notice: 'Tail blade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tail_blade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tail_blades/1
  # DELETE /tail_blades/1.json
  def destroy
    @tail_blade = TailBlade.find(params[:id])
    @tail_blade.destroy

    respond_to do |format|
      format.html { redirect_to tail_blades_url }
      format.json { head :no_content }
    end
  end
end
