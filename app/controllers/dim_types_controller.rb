class DimTypesController < ApplicationController
  before_action :set_dim_type, only: [:show, :edit, :update, :destroy]

  # GET /dim_types
  # GET /dim_types.json
  def index
    @dim_types = DimType.all
  end

  # GET /dim_types/1
  # GET /dim_types/1.json
  def show
  end

  # GET /dim_types/new
  def new
    @dim_type = DimType.new
  end

  # GET /dim_types/1/edit
  def edit
  end

  # POST /dim_types
  # POST /dim_types.json
  def create
    @dim_type = DimType.new(dim_type_params)

    respond_to do |format|
      if @dim_type.save
        format.html { redirect_to @dim_type, notice: 'Dim type was successfully created.' }
        format.json { render :show, status: :created, location: @dim_type }
      else
        format.html { render :new }
        format.json { render json: @dim_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dim_types/1
  # PATCH/PUT /dim_types/1.json
  def update
    respond_to do |format|
      if @dim_type.update(dim_type_params)
        format.html { redirect_to @dim_type, notice: 'Dim type was successfully updated.' }
        format.json { render :show, status: :ok, location: @dim_type }
      else
        format.html { render :edit }
        format.json { render json: @dim_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dim_types/1
  # DELETE /dim_types/1.json
  def destroy
    @dim_type.destroy
    respond_to do |format|
      format.html { redirect_to dim_types_url, notice: 'Dim type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dim_type
      @dim_type = DimType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dim_type_params
      params.require(:dim_type).permit(:name, :symbol, :two_sided, :continuous)
    end
end
