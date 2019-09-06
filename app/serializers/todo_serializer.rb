class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :project_id, :completed
  belongs_to :project
end
