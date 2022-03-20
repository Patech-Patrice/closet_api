module Api
  module V1
    class HandbagsController < ApplicationController
      def index
      @handbags = Handbag.all
      render json: @handbags
    end

  #use rails require params to access each individual handbag object
    def create
      @handbag = Handbag.create(handbag_params)
      if @handbag.save
        render json: @handbag, status: 200
      else
        render json: { errors: @handbag.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def destroy
      Handbag.find(params[:id]).destroy!
      head :no_content
    end

    private

      def handbag_params
        params.permit(:handbag, :name, :style, :description, :brand_name, :size, :price)
      end
    end 
  end
end
