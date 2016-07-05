class Api::ListsController < ApiController
  def index
    lists = List.all
    render json: lists, each_serializer: ListSerializer
  end
end
