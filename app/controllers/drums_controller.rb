class DrumsController < ApplicationController
  before_action :set_drum, only: [:show, :edit, :update, :destroy]

  # GET /drums
  # GET /drums.json
  def index
    @drums = Drum.all
  end

  # GET /drums/1
  # GET /drums/1.json
  def show
  end

  # GET /drums/new
  def new
    @drum = Drum.new
    @drum.woods.build.cuts.build
  end

  # GET /drums/1/edit
  def edit
  end

  # POST /drums
  # POST /drums.json
  def create
    @drum = Drum.new(drum_params)

    respond_to do |format|
      if @drum.save
        format.html { redirect_to @drum, notice: 'Drum was successfully created.' }
        format.json { render :show, status: :created, location: @drum }
      else
        format.html { render :new }
        format.json { render json: @drum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drums/1
  # PATCH/PUT /drums/1.json
  def update
    respond_to do |format|
      if @drum.update(drum_params)
        format.html { redirect_to @drum, notice: 'Drum was successfully updated.' }
        format.json { render :show, status: :ok, location: @drum }
      else
        format.html { render :edit }
        format.json { render json: @drum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drums/1
  # DELETE /drums/1.json
  def destroy
    @drum.destroy
    respond_to do |format|
      format.html { redirect_to drums_url, notice: 'Drum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_drum
    @drum = Drum.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def drum_params
    params.require(:drum).permit(:size, woods_attributes: [:name, cuts_attributes: [:name]])
  end
end
