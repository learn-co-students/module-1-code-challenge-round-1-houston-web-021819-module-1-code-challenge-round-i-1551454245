class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name_given)
    self.all.find {|customer| customer.full_name == full_name_given}
  end

  def self.find_all_by_first_name(first_name_given)
    self.all.select {|customer| customer.first_name == first_name_given}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  def add_review(restaurant_i, content_i, rating_i)
    new_review = Review.new(self, restaurant_i, rating_i, content_i)
  end

  def my_reviews
    my_reviews = Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    my_reviews.length
  end

  def restaurants
    res_reviewed = self.my_reviews.map {|review| review.restaurant}
    return res_reviewed.uniq
  end
end
