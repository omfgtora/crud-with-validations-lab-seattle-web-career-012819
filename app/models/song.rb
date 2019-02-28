class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :artist_name, presence: true
  validate :released?

  def released?
    if self.released
    end
  end
  
end