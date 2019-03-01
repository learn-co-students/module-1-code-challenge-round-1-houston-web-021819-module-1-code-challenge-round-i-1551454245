class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name:)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
      self.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    customer_list = self.reviews.map {|review| review.customer}
    customer_list.uniq
  end

  def average_star_rating
    ratings = self.reviews.map {|review| review.rating}
    ratings.sum.to_i / ratings.length
  end

  def longest_review
    contents = self.reviews.map {|review| review.content}
    contents.max_by(&:length)
  end


end
