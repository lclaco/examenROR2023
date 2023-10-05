class EnginersController < ApplicationController
  before_action :set_enginer, only: %i[ show edit update destroy ]

  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /enginers or /enginers.json
  def index
    @enginers = Enginer.all    
    
    if params[:query_text].present?
      @enginers = @enginers.search_full_text(params[:query_text])
      @pagy, @enginers = pagy(@enginers.search_full_text(params[:query_text]))
    else
      @pagy, @enginers = pagy(Enginer.all)
    end
  end

  # GET /enginers/1 or /enginers/1.json
  def show
  end

  # GET /enginers/new
  def new
    @enginer = Enginer.new
  end

  # GET /enginers/1/edit
  def edit
  end

  # POST /enginers or /enginers.json
  def create
    @enginer = Enginer.new(enginer_params)

    respond_to do |format|
      if @enginer.save
        if params[:enginer][:image].present?        
          uploaded_file = params[:enginer][:image]
          @enginer.image = uploaded_file
          @enginer.save
        end

        format.html { redirect_to enginer_url(@enginer), notice: "Enginer was successfully created." }
        format.json { render :show, status: :created, location: @enginer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enginer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enginers/1 or /enginers/1.json
  def update
    respond_to do |format|
      if @enginer.update(enginer_params)
        if params[:enginer][:image].present?        
          uploaded_file = params[:enginer][:image]
          @enginer.image = uploaded_file
          @enginer.save
        end

        format.html { redirect_to enginer_url(@enginer), notice: "Enginer was successfully updated." }
        format.json { render :show, status: :ok, location: @enginer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enginer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enginers/1 or /enginers/1.json
  def destroy
    @enginer = Enginer.find(params[:id])  
    @enginer.destroy

    respond_to do |format|
      format.html { redirect_to enginers_url, notice: "Motor y sus mantenimientos eliminados correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enginer
      @enginer = Enginer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enginer_params
      params.require(:enginer).permit(:name, :descripcion, :image, :equipment_type_id)
    end
end
