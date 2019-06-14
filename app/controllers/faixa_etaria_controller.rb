class FaixaEtariaController < ApplicationController
  before_action :set_faixa_etarium, only: [:show, :edit, :update, :destroy]

  # GET /faixa_etaria
  # GET /faixa_etaria.json
  def index
    @faixa_etaria = FaixaEtarium.all
  end

  # GET /faixa_etaria/1
  # GET /faixa_etaria/1.json
  def show
  end

  # GET /faixa_etaria/new
  def new
    @faixa_etarium = FaixaEtarium.new
  end

  # GET /faixa_etaria/1/edit
  def edit
  end

  # POST /faixa_etaria
  # POST /faixa_etaria.json
  def create
    @faixa_etarium = FaixaEtarium.new(faixa_etarium_params)

    respond_to do |format|
      if @faixa_etarium.save
        format.html { redirect_to @faixa_etarium, notice: 'Faixa etarium was successfully created.' }
        format.json { render :show, status: :created, location: @faixa_etarium }
      else
        format.html { render :new }
        format.json { render json: @faixa_etarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faixa_etaria/1
  # PATCH/PUT /faixa_etaria/1.json
  def update
    respond_to do |format|
      if @faixa_etarium.update(faixa_etarium_params)
        format.html { redirect_to @faixa_etarium, notice: 'Faixa etarium was successfully updated.' }
        format.json { render :show, status: :ok, location: @faixa_etarium }
      else
        format.html { render :edit }
        format.json { render json: @faixa_etarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faixa_etaria/1
  # DELETE /faixa_etaria/1.json
  def destroy
    @faixa_etarium.destroy
    respond_to do |format|
      format.html { redirect_to faixa_etaria_url, notice: 'Faixa etarium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faixa_etarium
      @faixa_etarium = FaixaEtarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faixa_etarium_params
      params.require(:faixa_etarium).permit(:faixa_etaria, :description)
    end
end
