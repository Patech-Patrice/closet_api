class HandbagsController < ApplicationController
  def index
    render json: Handbag.all
  end

  def create
    #logic here
  end

end
