class PositionsController < ApplicationController
    def index
      positions = Position.all
      render json: positions
    end
  
    def show
      position = Position.find(params[:id])
      render json: position
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Position not found" }, status: :not_found
    end
  
    def create
      position = Position.new(position_params)
      if position.save
        render json: position, status: :created
      else
        render json: position.errors, status: :unprocessable_entity
      end
    end
  
    def update
      position = Position.find(params[:id])
      if position.update(position_params)
        render json: position
      else
        render json: position.errors, status: :unprocessable_entity
      end
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Position not found" }, status: :not_found
    end
  
    def destroy
      position = Position.find(params[:id])
      position.destroy
      render json: { message: "Position deleted successfully" }, status: :ok
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Position not found" }, status: :not_found
    end
  
    private
  
    def position_params
      params.require(:position).permit(:client_id, :title, :description, :hiring_number, :work_mode, :location, :salary, :benefits, :status)
    end
  end
  