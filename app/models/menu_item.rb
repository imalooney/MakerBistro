class MenuItem < ActiveRecord::Base
  has_many :recipes
  has_many :ingredients, through: :recipes, dependent: :destroy
  accepts_nested_attributes_for :ingredients, allow_destroy: true

end
