class Project < ApplicationRecord
  belongs_to :user
  has_many :todos

  validates :title, presence: true 
end
