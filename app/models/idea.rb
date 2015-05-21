class Idea < ActiveRecord::Base
  enum quality: [:swill, :plausible, :genius]

  validates :title, presence: true
  validates :body, presence: true

  before_save :set_quality

  def set_quality
    self.quality = 0
  end
end
