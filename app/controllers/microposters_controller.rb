class MicropostersController < ApplicationController
  # GET /microposters
  # GET /microposters.json
  def index
    @microposters = Microposter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microposters }
    end
  end

  # GET /microposters/1
  # GET /microposters/1.json
  def show
    @microposter = Microposter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microposter }
    end
  end

  # GET /microposters/new
  # GET /microposters/new.json
  def new
    @microposter = Microposter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microposter }
    end
  end

  # GET /microposters/1/edit
  def edit
    @microposter = Microposter.find(params[:id])
  end

  # POST /microposters
  # POST /microposters.json
  def create
    @microposter = Microposter.new(params[:microposter])

    respond_to do |format|
      if @microposter.save
        format.html { redirect_to @microposter, notice: 'Microposter was successfully created.' }
        format.json { render json: @microposter, status: :created, location: @microposter }
      else
        format.html { render action: "new" }
        format.json { render json: @microposter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microposters/1
  # PUT /microposters/1.json
  def update
    @microposter = Microposter.find(params[:id])

    respond_to do |format|
      if @microposter.update_attributes(params[:microposter])
        format.html { redirect_to @microposter, notice: 'Microposter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microposter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposters/1
  # DELETE /microposters/1.json
  def destroy
    @microposter = Microposter.find(params[:id])
    @microposter.destroy

    respond_to do |format|
      format.html { redirect_to microposters_url }
      format.json { head :no_content }
    end
  end
end
