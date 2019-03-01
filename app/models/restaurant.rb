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

  def self.find_by_name(name_given)
    self.all.find {|restaurant| restaurant.name == name_given}
  end

  def reviews
    reviews = Review.all.select {|review| review.restaurant==self}
  end

  def customers
    reviewed_customers = self.reviews.map {|review| review.customer}
    return customers.uniq
  end

  def average_star_rating
    total = 0
    rating = self.reviews.each {|review| total +=review.rating}
    average_star_rating = total/reviewed_customers.length
  end

  def longest_review
    review_contents = self.reviews.map {|review| review.content}
    content_lengths = review_contents.map {|content| content.split.length}
    longest_review = review_contents.select {|content| content.split.length == content_lengths.max}
    return longest_review
  end
    
end
