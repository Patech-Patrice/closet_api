require 'pry'

module Api
  module V1
    class HandbagsController < ApplicationController
      def index
      render json: Handbag.all
    end

  #use rails require params to access each individual handbag object
    def create
      @handbag = Handbag.new(handbag_params)
      if @handbag.save
        binding.pry
        render json: @handbag, status: 200
       # binding.pry
      else
        render json: { errors: @handbag.errors.full_messages }, status: :unprocessable_entity
        puts "Hello"
        #binding.pry
      end
    end

    def destroy
      Handbag.find(params[:id]).destroy!
      head :no_content
    end

    private

      def handbag_params
        params.permit(:handbag, :brand, :color, :fabric, :name)
      end
    end 
  end
end
