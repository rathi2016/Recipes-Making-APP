class Recipe < ApplicationRecord
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  has_many :steps
  accepts_nested_attributes_for :steps,reject_if: :all_blank, allow_destroy: true
  validates :title, presence: true
end
