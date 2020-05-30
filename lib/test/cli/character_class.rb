class Character 
  
  attr_accessor :id, :name, :occupation, :nickname , :actor
  
  @@all = []
  
  def initialize 
    @@all << self
  end 

  
  def self.all
    @@all
  end 
  

  def self.find_by_name(name)
    Character.all.find do | c |
      c.name == name
    end
  end


  def ch_quotes
    Quote.all.select do | q | 
      q.character == self
    end 
  end 
  
end 