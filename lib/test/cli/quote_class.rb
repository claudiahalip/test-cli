class Quote
  
  attr_accessor :id, :quote, :character
  attr_reader :character
  
  @@all = []
  
  def initialize 
    @@all << self
  end 

  def character=(name)   # quote belongs to a character
    @character = Character.find_by_name(name)
  end 
  

  def save
    @@all << self
  end


  
  def self.all
    @@all
  end 


  

 
  
  
end 