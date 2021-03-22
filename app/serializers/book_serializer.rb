class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author

  belongs_to :user
  belongs_to :category
end
