class RankingItem < ApplicationRecord
  validates :count, presence: true
  belongs_to :ranking
  belongs_to :keyword
end
