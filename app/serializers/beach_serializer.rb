class BeachSerializer < ActiveModel::Serializer
  attributes :id, :name, :temp, :weather, :pollution, :address, :surf
end
