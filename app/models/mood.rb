class Mood < ApplicationRecord
  belongs_to :symptom
  enum :mood, %i[đ đ đ âšī¸ đĻ]
end
