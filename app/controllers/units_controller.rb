class UnitsController < ApplicationController

  def new
  end

  def create
    @unit = Unit.new(unit_params)

    @unit.save
    redirect_to @unit
  end

  def show
    @unit = Unit.find(params[:id])
  end

  def index
    @units = Unit.all
    @units = Unit.unit_type(params[:unit_type]) if params[:unit_type].present?
  end

  private
    def unit_params
      params.require(:unit).permit(:id_no, :unit_type, :size, images: [])
    end

end
