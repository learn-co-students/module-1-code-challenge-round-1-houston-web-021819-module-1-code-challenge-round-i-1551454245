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

  def self.find_by_name(x)
    Restaurant.all.select do |rest|
      rest.name == x
    end
  end
end
