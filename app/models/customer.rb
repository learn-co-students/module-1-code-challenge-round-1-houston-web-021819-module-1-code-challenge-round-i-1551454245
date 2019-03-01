class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(first_name, last_name)
    
    name = @@all.select do |customer|
      if customer.first_name == first_name && customer.last_name == last_name
        customer.full_name
      end
    end
    name.first
  end

  def self.find_all_by_first_name(first_name)
    @@all.select do |customer|
      customer.first_name == first_name
    end
  end


  def self.all_names(first_name, last_name)
    @@all.each do |customer|
      if customer.first_name == first_name && customer.last_name == last_name
        customer.full_name
      end
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(customer: self, restaurant: restaurant, content: content, rating: rating)
  end

  def num_reviews
    reviews = Review.all.select |review|
      review.customer == self
    end
    reviews.sum
  end

  def restaurants
    reviews = Review.all.select |review|
      review.customer == self
    end
    reviews.map do |review|
      review.restaurant
    end
  end

end
