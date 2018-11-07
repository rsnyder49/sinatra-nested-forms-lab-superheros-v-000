class Hero
  attr_accessor :name, :power, :bio
  @@heroes = []
  
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@heroes << self
  end
  
  def self.all
    @@heroes
  end
  
  def self.clear
    @@heroes.clear
  end
  
end 