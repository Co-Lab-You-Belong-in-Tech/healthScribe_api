class Symptom < ApplicationRecord
  belongs_to :user
  validates :name, :description, :treatment, presence: true
end
