class Cocktail < ApplicationRecord
    validates :name, uniqueness: true, presence: true
    validates :image_url, presence: true

    has_many :doses, dependent: :destroy

    has_many :ingredients, through: :doses
end
