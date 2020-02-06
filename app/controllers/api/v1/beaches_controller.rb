class Api::V1::BeachesController < ApplicationController
    
    def index 
        @beaches = Beach.all
        render json: {beach: @beaches}, include: ['reviews', 'users']
    end
    def create
        @beach = Beach.create(beach_params)
        if @beach.valid?
          @token = encode_token({ beach_id: @beach.id })
          render json: { beach: @beach, jwt: @token }, status: :created
        else
          render json: { error: 'failed to create beach' }, status: :not_acceptable
        end
    end
    def update
      @beach = Beach.find(params[:id])
      @beach.update(name: params[:beach][:name], temp: params[:beach][:temp], weather: params[:beach][:weather], pollution: params[:beach][:pollution], surf: params[:beach][:surf],address: params[:beach][:address])
      render json: {beach: @beach}, include: ['reviews', 'users']
    end
    
    private
   
    def beach_params
      params.require(:beach).permit(:name, :temp, :weather, :pollution, :surf, :address)
    end
end
