class Service < ApplicationRecord
  include Fae::BaseModelConcern

  has_fae_image :hero_image

  validates :title, presence: true, uniqueness: true
  validates :price, presence: true

  def fae_display_field
    title
  end
end
