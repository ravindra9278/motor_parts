class Car < ApplicationRecord
  has_many :car_models

  before_create :set_slug
  validates :name, presence: true

  private
  
  def set_slug
    self.slug = name.parameterize
  end
end
