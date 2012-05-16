class GovernorsController < ApplicationController
  # GET /governors
  # GET /governors.json
  def index
    @governors = Governor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @governors }
    end
  end

  # GET /governors/1
  # GET /governors/1.json
  def show
    @governor = Governor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @governor }
    end
  end

  # GET /governors/new
  # GET /governors/new.json
  def new
    @governor = Governor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @governor }
    end
  end

  # GET /governors/1/edit
  def edit
    @governor = Governor.find(params[:id])
  end

  # POST /governors
  # POST /governors.json
  def create
    @governor = Governor.new(params[:governor])

    respond_to do |format|
      if @governor.save
        format.html { redirect_to @governor, notice: 'Governor was successfully created.' }
        format.json { render json: @governor, status: :created, location: @governor }
      else
        format.html { render action: "new" }
        format.json { render json: @governor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /governors/1
  # PUT /governors/1.json
  def update
    @governor = Governor.find(params[:id])

    respond_to do |format|
      if @governor.update_attributes(params[:governor])
        format.html { redirect_to @governor, notice: 'Governor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @governor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /governors/1
  # DELETE /governors/1.json
  def destroy
    @governor = Governor.find(params[:id])
    @governor.destroy

    respond_to do |format|
      format.html { redirect_to governors_url }
      format.json { head :no_content }
    end
  end
end
