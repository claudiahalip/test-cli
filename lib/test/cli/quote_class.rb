class Quote
  
  attr_accessor :id, :character, :quote 
  
  @@all = []
  
  def initialize 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
end 