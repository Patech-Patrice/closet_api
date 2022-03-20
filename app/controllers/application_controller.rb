class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed

    private

     #This method handles the error message for all items that are not destroyed
  def not_destroyed(err)
    render json: { errors: err.record.errors }, status: :unprocecessable_entity
  end

end
