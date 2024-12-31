class ClientsController < ApplicationController
    def index
      clients = Client.select(:id, :name)
      render json: clients
    end
  end
  