class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    show = Show.where("rating = ?", self.highest_rating)
    show.first
  end

  def self.lowest_rating
  end
end
