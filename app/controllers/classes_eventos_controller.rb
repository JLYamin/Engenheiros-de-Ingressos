class ClassesEventosController < ApplicationController
  before_action :set_classes_evento, only: [:show, :edit, :update, :destroy]

  # GET /classes_eventos
  # GET /classes_eventos.json
  def index
    @classes_eventos = ClassesEvento.order(:classe)
  end

  # GET /classes_eventos/1
  # GET /classes_eventos/1.json
  def show
  end

  # GET /classes_eventos/new
  def new
    @classes_evento = ClassesEvento.new
  end

  # GET /classes_eventos/1/edit
  def edit
  end

  # POST /classes_eventos
  # POST /classes_eventos.json
  def create
    @classes_evento = ClassesEvento.new(classes_evento_params)

    respond_to do |format|
      if @classes_evento.save
        format.html { redirect_to @classes_evento, notice: 'Classes evento was successfully created.' }
        format.json { render :show, status: :created, location: @classes_evento }
      else
        format.html { render :new }
        format.json { render json: @classes_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classes_eventos/1
  # PATCH/PUT /classes_eventos/1.json
  def update
    respond_to do |format|
      if @classes_evento.update(classes_evento_params)
        format.html { redirect_to @classes_evento, notice: 'Classes evento was successfully updated.' }
        format.json { render :show, status: :ok, location: @classes_evento }
      else
        format.html { render :edit }
        format.json { render json: @classes_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classes_eventos/1
  # DELETE /classes_eventos/1.json
  def destroy
    @classes_evento.destroy
    respond_to do |format|
      format.html { redirect_to classes_eventos_url, notice: 'Classes evento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classes_evento
      @classes_evento = ClassesEvento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classes_evento_params
      params.require(:classes_evento).permit(:classe)
    end
end
