class Symptom < ApplicationRecord
  # Direct associations
  belongs_to :user
  belongs_to :disease

  # Scopes
  # scope :chronic, -> { where(chronic: true) }
  # scope :non_chronic, -> { where(chronic: false) }
  validates :name, presence: true
end
