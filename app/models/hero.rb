class Hero

  attr_accessor :name, :power, :biography

  @@heros = []

  def initialize(hash)
    @name = hash[:name]
    @power = hash[:power]
    @biography = hash[:biography]
    
  end

  def all
    @@heros
  end

  def self.clear
    self.all.clear
  end

end
