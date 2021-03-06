class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :description, :completed

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
