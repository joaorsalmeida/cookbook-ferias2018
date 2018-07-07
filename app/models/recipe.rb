class Recipe < ApplicationRecord
  belongs_to :cuisine
  validates :title, presence: true
  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
