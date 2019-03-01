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
    self.all.find do |rest|
      rest.name == name
    end
  end

  def customers
    my_customers = self.reviews.map do |review|
      review.customer
    end
    my_customers.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    stars = self.reviews.map do|review|
      review.review
    end
    sum = 0
      stars.each do |star|
      sum += star
      end
    average = sum.to_f / stars.length.to_f
  end

  def longest_review
    review_lengths = self.reviews.map do |review|
      review.content.length
    end
    longest_content = self.reviews.find do |review|
      review.content.length == review_lengths.max
    end
    longest_content.content
  end



end
