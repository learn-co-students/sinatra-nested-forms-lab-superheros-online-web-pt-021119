class SuperHero
  attr_accessor :name, :power, :bio

  def initialize(name, power, bio)
    @name  = name
    @power = power
    @bio   = bio
    self.save
  end

  def self.all
    @@all ||= []
  end

  def self.save
    self.all << self
  end
end
