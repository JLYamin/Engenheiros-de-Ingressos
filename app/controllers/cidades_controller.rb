class CidadesController < ApplicationController
  before_action :set_cidade, only: [:show, :edit, :update, :destroy]
  before_action :set_estado

  # GET /cidades/1
  # GET /cidades/1.json
  def show
  end

  # GET /cidades/new
  def new
    @cidade = Cidade.new
  end

  # GET /cidades/1/edit
  def edit
  end

  # POST /cidades
  # POST /cidades.json
  def create
    @cidade = Cidade.new(cidade_params)
    respond_to do |format|
      if @cidade.save
        format.html { redirect_to @cidade, notice: 'Cidade was successfully created.' }
        format.json { render :show, status: :created, location: @cidade }
      else
        format.html { render :new }
        format.json { render json: @cidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cidades/1
  # PATCH/PUT /cidades/1.json
  def update
    respond_to do |format|
      if @cidade.update(cidade_params)
        format.html { redirect_to @cidade, notice: 'Cidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @cidade }
      else
        format.html { render :edit }
        format.json { render json: @cidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cidades/1
  # DELETE /cidades/1.json
  def destroy
    @p = @cidade.estado
    @cidade.destroy
    respond_to do |format|
      format.html { redirect_to @p, notice: 'Cidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cidade
      @cidade = Cidade.find(params[:id])
    end

    def set_estado
      @estado = params[:estado]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cidade_params
      params.require(:cidade).permit(:cidade_nome, :estado_id)
    end
end
