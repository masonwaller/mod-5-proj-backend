class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :user, :beach, :date
end
