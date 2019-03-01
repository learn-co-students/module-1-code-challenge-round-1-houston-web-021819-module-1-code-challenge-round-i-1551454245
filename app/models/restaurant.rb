class Restaurant
  @@all = []
  attr_accessor :name, :address

  def initialize(name:, address:)
    self.name = name
    self.address = address
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(restaurant_name)
    self.all.first {|res| res.name == restaurant_name}
  end

  def reviews
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    self.reviews.map {|rev| rev.customer}
  end

  def average_star_rating
    ratings = self.reviews.map {|rev| rev.rating}
    ratings.inject(:+).to_f / ratings.length
  end

  def longest_review
    self.reviews.max_by {|rev| rev.content.length}
  end
end
