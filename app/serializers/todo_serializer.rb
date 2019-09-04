class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :project_id
  belongs_to :project
end
