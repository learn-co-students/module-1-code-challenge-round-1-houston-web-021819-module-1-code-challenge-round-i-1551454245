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

  def find_by_name(name)
      full_name
end
end
