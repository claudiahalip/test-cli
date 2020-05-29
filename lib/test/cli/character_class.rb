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
    Character.all.find do |c|
      c.name == name
    end
  end

  def add_quotes(quote)
    quote.character = self
  end

  def add_quotes_by_character(name)
    new_ch = Character.new(name)
    add_quotes(name)

  end 

  def ch_quotes
    Quote.all.select do |q| 
      q.character == self
      
    end 
    
  end 
  
end 