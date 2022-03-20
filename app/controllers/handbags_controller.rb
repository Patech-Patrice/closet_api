class HandbagsController < ApplicationController
  def index
    @handbags = Handbag.all
    render json: @handbags
  end


  #hardcode the handbag variable first to test route using curl
 # def create
    #handbag = Handbag.new(name:'Givenchy Antigona Clutch in Tribal Girl Print', 
    #style:'Clutch', 
    #description:'Tribal Girl print with a transformer inspired mask, the print is wrapped around the Antigona clutch on both sides and leaves a powerful message that the Givenchy woman is about strength and confidence.',
    #brand_name:'Givenchy', 
    #size:'Medium', 
    #price:285)
    #if handbag.save
     # render json: handbag, status: :created
    #else
     # render json: handbag.errors, status: :unprocecessable_entity
    #end
  #end


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
