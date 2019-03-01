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
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

  def average_star_rating
    ratings = []
    reviews.each do |review|
      ratings << review.rating
    end
    ratings.inject{ |sum, el| sum + el }.to_f / ratings.length
  end

  def longest_review
    longest_string = 0
    longest_content = ""
    reviews.each do |review|
      if review.content.length > longest_string
        longest_string = review.content.length
        longest_content = review.content
      end
    end
    longest_content
  end
end
