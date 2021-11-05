require 'socket'
class ArtsController < ApplicationController
  before_action :set_art, only: %i[ show edit update destroy ]

  # GET /arts or /arts.json
  def index
    @arts = Art.all
    @hostname = Socket.gethostname
  end

  # GET /arts/1 or /arts/1.json
  def show
  end

  # GET /arts/new
  def new
    @art = Art.new
  end

  # GET /arts/1/edit
  def edit
  end

  # POST /arts or /arts.json
  def create
    @art = Art.new(art_params)

    respond_to do |format|
      if @art.save
        format.html { redirect_to arts_url, notice: "Art was successfully added." }        
        format.json { render :index, status: :created, location: @art }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arts/1 or /arts/1.json
  def update
    respond_to do |format|
      if @art.update(art_params)
        format.html { redirect_to @art, notice: "Art was successfully updated." }
        format.json { render :show, status: :ok, location: @art }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arts/1 or /arts/1.json
  def destroy
    @art.destroy
    respond_to do |format|
      format.html { redirect_to arts_url, notice: "Art was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art
      @art = Art.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def art_params
      params.require(:art).permit(:title, :description, :artist, :year, :image_url)
    end
end
