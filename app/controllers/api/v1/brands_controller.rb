require 'pry'

module Api
  module V1
    class BrandsController < ApplicationController
      def index
      render json: Brand.all
    end

  #use rails require params to access each individual handbag object
    def create
   
    end

    def destroy
      
    end

    private

      def brand_params
        # params.permit(:handbag, :brand, :color, :fabric, :name)
        params.require(:handbag).permit(:designer_name, :country_origin)
      end
    end 
  end
end
