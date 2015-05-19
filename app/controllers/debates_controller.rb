class DebatesController < ApplicationController
  # GET /debates
  # GET /debates.json
  def index
    @debates = Debate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @debates }
    end
  end

  # GET /debates/1
  # GET /debates/1.json
  def show
    @debate = Debate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @debate }
    end
  end

  # GET /debates/new
  # GET /debates/new.json
  def new
    @debate = Debate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @debate }
    end
  end

  # GET /debates/1/edit
  def edit
    @debate = Debate.find(params[:id])
  end

  # POST /debates
  # POST /debates.json
  def create
    @debate = Debate.new(params[:debate])

    respond_to do |format|
      if @debate.save
        format.html { redirect_to @debate, notice: 'Debate was successfully created.' }
        format.json { render json: @debate, status: :created, location: @debate }
      else
        format.html { render action: "new" }
        format.json { render json: @debate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /debates/1
  # PUT /debates/1.json
  def update
    @debate = Debate.find(params[:id])

    respond_to do |format|
      if @debate.update_attributes(params[:debate])
        format.html { redirect_to @debate, notice: 'Debate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @debate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debates/1
  # DELETE /debates/1.json
  def destroy
    @debate = Debate.find(params[:id])
    @debate.destroy

    respond_to do |format|
      format.html { redirect_to debates_url }
      format.json { head :no_content }
    end
  end
end
