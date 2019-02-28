class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :artist_name, presence: true
  validates :release_year, numericality: { less_than_or_equal_to: 2019 }
  validate :released?

  def released?
    if self.released
    end
  end
  
end