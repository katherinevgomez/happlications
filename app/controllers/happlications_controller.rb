class HapplicationsController < ApplicationController
  before_action :set_happlication, only: [:show, :update, :destroy]

  # GET /happlications
  def index
    @happlications = Happlication.all

    render json: @happlications
  end

  # GET /happlications/1
  def show
    render json: @happlication
  end

  # POST /happlications
  def create
    @happlication = Happlication.new(happlication_params)

    if @happlication.save
      render json: @happlication, status: :created, location: @happlication
    else
      render json: @happlication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /happlications/1
  def update
    if @happlication.update(happlication_params)
      render json: @happlication
    else
      render json: @happlication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /happlications/1
  def destroy
    @happlication.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_happlication
      @happlication = Happlication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def happlication_params
      params.require(:happlication).permit(:role, :company, :interview, :date)
    end
end
