class PaddlesController < ApplicationController
  # GET /paddles
  # GET /paddles.json
  def index
    @paddles = Paddle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @paddles }
    end
  end

  # GET /paddles/1
  # GET /paddles/1.json
  def show
    @paddle = Paddle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paddle }
    end
  end

  # GET /paddles/new
  # GET /paddles/new.json
  def new
    @paddle = Paddle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paddle }
    end
  end

  # GET /paddles/1/edit
  def edit
    @paddle = Paddle.find(params[:id])
  end

  # POST /paddles
  # POST /paddles.json
  def create
    @paddle = Paddle.new(params[:paddle])

    respond_to do |format|
      if @paddle.save
        format.html { redirect_to @paddle, notice: 'Paddle was successfully created.' }
        format.json { render json: @paddle, status: :created, location: @paddle }
      else
        format.html { render action: "new" }
        format.json { render json: @paddle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /paddles/1
  # PUT /paddles/1.json
  def update
    @paddle = Paddle.find(params[:id])

    respond_to do |format|
      if @paddle.update_attributes(params[:paddle])
        format.html { redirect_to @paddle, notice: 'Paddle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paddle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paddles/1
  # DELETE /paddles/1.json
  def destroy
    @paddle = Paddle.find(params[:id])
    @paddle.destroy

    respond_to do |format|
      format.html { redirect_to paddles_url }
      format.json { head :no_content }
    end
  end
end
