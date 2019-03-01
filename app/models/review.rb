class Review

    attr_accessor :customer, :restaurant, :rating, :content

    @@all = []

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

    def customer
        @@all.select do |review|
            review.customer == self
        end
    end

    def restaurant
        @@all.select do |review|
            review.restaurant  == self
        end
    end

    def rating
        @@all.select do |review|
            review.rating == self
        end
    end

    def content
        @@all.select do |review|
            review.content == self
        end
    end

end

