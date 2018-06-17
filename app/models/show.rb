class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    self.maximum("rating").title
  end

  def self.lowest_rating
  end
end
