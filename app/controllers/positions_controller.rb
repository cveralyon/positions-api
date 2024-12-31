class PositionsController < ApplicationController
  before_action :set_position, only: %i[show update destroy]

  def index
    positions = Position.includes(:client)
    positions = positions.where("title ILIKE ?", "%#{params[:search]}%") if params[:search].present?
    positions = positions.where(status: params[:status]) if params[:status].present?
  
    positions = positions.page(params[:page]).per(8)
  
    render json: {
      positions: positions.as_json(include: { client: { only: [:id, :name, :logo] } }),
      total_pages: positions.total_pages,
      current_page: positions.current_page
    }
  end
  

  def show
    render json: @position.as_json(include: { client: { only: %i[id name logo] } })
  end

  def create
    position = Position.new(position_params)
    if position.save
      render json: position, status: :created
    else
      render json: { errors: position.errors.full_messages }, status: :unprocessable_entity
    end
  end
  

  def update
    if @position.update(position_params)
      render json: @position
    else
      render json: { errors: @position.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @position.destroy
    head :no_content
  end

  private

  def set_position
    @position = Position.find(params[:id])
  end

  def position_params
    params.require(:position).permit(:client_id, :title, :description, :hiring_number, :work_mode, :location, :salary, :benefits, :status)
  end
end
