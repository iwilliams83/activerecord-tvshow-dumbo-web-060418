class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    (Show.where("rating = ?", self.highest_rating)).first
  end

  def self.lowest_rating
  end
end
