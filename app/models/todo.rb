class Todo < ApplicationRecord
  # 'dependent: :destroy' when the object is destroyed, destroy will be called on its associated objects.
  has_many :items, dependent: :destroy

  validates_presence_of :title, :created_by
end
