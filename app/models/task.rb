class Task < ApplicationRecord

  validates :name, :description, :image_url, presence: true
  validates :name, uniqueness: true
end
