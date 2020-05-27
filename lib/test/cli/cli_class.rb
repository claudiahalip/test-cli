require 'pry'

class CLI
  
  def call 
    
    puts "Welcome to 'Breaking Bad' Tv show facts!"   
    
    API.new.get_characters
    
    self.list_characters
    
    
  end
  
  def list_characters
    puts "Do you want to see a list of all the characters?"
    puts "'yes' to continue , any other key for 'exit'"
    input = gets.chomp.downcase
    
    if input == "yes"
      puts "Here is a list with all the characters:"
      display_list_ch
      character_choise
    else
      puts "Bye!Come back later."
    end 
    
    
  end 
  
  def character_choise
    
    puts "What character are you interesting in?"
    puts "Intoduce a number for your choise."
    index = gets.chomp.to_i - 1
    
    until index.between?(1, Character.all.length - 1)
      puts "Sorry, this is an invalid choise"
      index = gets.chomp.to_i - 1
    end 
      
    
    
    ch_inst = Character.all[index]
    
    character_details
    
  end
  
  def character_details
    
  end 
  
  
  def display_list_ch
    Character.all.each_with_index do |ch, index|
      puts "#{index+1}.#{ch.name}"
    end
    
  end
  
  
  
  
  
  
end   
