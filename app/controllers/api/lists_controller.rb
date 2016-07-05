class Api::ListsController < ApiController
  def create
    list = list.new
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
