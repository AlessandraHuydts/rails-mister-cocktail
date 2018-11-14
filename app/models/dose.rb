class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :ingredient, uniqueness: { scope: :cocktail,
    message: "already has this ingredient"}
  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
end

# Dose
#   has a description
#   description cannot be blank (FAILED - 3)
#   belongs to a cocktail (FAILED - 4)
#   belongs to an ingredient (FAILED - 5)
#   cocktail cannot be blank (FAILED - 6)
#   ingredient cannot be blank (FAILED - 7)
#   is unique for a given cocktail/ingredient couple (FAILED - 8)

