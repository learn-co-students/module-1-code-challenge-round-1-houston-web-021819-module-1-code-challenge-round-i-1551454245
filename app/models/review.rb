class Review
attr_accessor :customer, :restaurant, :star_rating, :content
attr_reader :author, :restaurant

@@all = []

  def initialize(author:, restaurant:, star_rating:, content:)
    @author = author
    @star_rating = star_rating
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end
