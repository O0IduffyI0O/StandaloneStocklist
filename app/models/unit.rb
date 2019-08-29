class Unit < ApplicationRecord
  has_many_attached :images
  scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }

  scope :unit_type, -> (unit_type) {where unit_type: unit_type}
  scope :unit_size, -> (size) {where size: size}
end
