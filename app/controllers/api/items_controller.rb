class Api::ItemsController < ApiController
  def create
    item = Item.new
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
