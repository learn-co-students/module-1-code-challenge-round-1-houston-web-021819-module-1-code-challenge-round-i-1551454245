class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find { |restaurant| restaurant.name == name }
  end

  def customers
    customer_list = self.reviews.map do |review|
      review.customer
    end
    customer_list.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    ratings = self.reviews.collect do |review|
      review.rating
    end
    average = (ratings.sum/ratings.length)
  end

  def longest_review
    review_contents = self.reviews.collect do |review|
      review.content 
    end
    review_contents.max_by { |content| content.length }
  end



end
