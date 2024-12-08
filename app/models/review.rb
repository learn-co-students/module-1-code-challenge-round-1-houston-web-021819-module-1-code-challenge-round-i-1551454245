class Review

    attr_accessor :rating, :content
    attr_reader :restaurant, :customer

    @@all = []

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant

    if rating >= 0 && rating <= 5
        @rating = rating
    else
        @rating = nil
    end

        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

end

