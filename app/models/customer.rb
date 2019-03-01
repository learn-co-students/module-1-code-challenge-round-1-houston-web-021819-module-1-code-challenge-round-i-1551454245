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

  def self.find_by_name(name)
    @@all.find { | customer | customer.full_name == name}
  end
  
  def self.find_all_by_first_name(name)
    @@all.select { | customer | customer.first_name == name}
  end

  def self.all_names
    @@all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(customer: self, restaurant: restaurant, rating: rating, content: content)
    
  end

  def num_reviews
    all_my_reviews = Review.all.select { |review | review.customer == self || review.customer == self.full_name}
    return all_my_reviews.length
  end

  def restaurants
    all_my_reviews = Review.all.select { |review | review.customer == self}
    all_my_restaurants = all_my_reviews.map { | review | review.restaurant}
    all_my_restaurants.uniq
  end

end
