class Task < ApplicationRecord
<<<<<<< HEAD

  validates :name, :description, :image_url, presence: true
  validates :name, uniqueness: true
=======
>>>>>>> c98d32fb086b4d5744edc1de3bb74cda0403a523
end
