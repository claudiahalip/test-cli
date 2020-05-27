class Character 
  
  attr_accessor :id, :name, :occupation, :nickname , :actor
  
  @@all = []
  
  def initialize 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  
end 