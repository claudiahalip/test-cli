class Character 
  
  attr_accessor :id, :name, :occupation, :nickname , :actor
  attr_reader :quote 
  
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

  def ch_quotes
    Quote.all.collect { |q| q.character == self} 
  end 
  
end 