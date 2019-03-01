class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name:, last_name:)
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

  def self.find_by_name(full_name:)
    Customer.all.find do | customer |
      customer.full_name == self
    end
  end
  #returns nil

  def self.find_all_by_first_name(first_name:)
    Customer.all.select do | customer |
      customer.first_name == self
    end
  end
  #returns empty array

  def add_review(restaurant:, content:, rating:)
    Review.new(customer: self, restaurant: restaurant, content: content, rating: rating)
  end

  def num_reviews
    reviews = Review.all.select do | review |
      review.customer == self
    end
    reviews.length
  end

  def restaurants
    reviews = Review.all.select do | review |
      review.customer == self
    end
    reviews.map do | value |
      value.restaurant
    end
  end

end


