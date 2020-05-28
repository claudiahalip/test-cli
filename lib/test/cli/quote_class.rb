class Quote
  
  attr_accessor :id, :author, :quote 
  
  @@all = []
  
  def initialize 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
end 