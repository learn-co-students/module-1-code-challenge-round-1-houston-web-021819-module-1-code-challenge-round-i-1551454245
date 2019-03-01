class Review

    attr_accessor :content, :rating
    attr_reader :customer, :restaurant
    @@all = []

    def initialize(customer: customer, restaurant: restaurant, content: content, rating: rating)
        self.customer = customer
        self.restaurant = restaurant
        self.content = content
        self.rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    private

    attr_writer :customer, :restaurant

end

