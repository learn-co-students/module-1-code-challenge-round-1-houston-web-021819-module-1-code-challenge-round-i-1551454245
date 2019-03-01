class Review
  @@all = []
  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  def initialize(customer:, restaurant:, rating:, content:)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    #integer from  1 to 5, to do
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end
  
  def rating
    if @rating < 1
        return nil
    elsif @rating > 5
        return nil
    end
    return @rating
  end

  def content
    @content.to_s
  end
end

