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
    else
      puts "Bye!Come back later."
    end 
    
    
  end 
  
  
  def display_list_ch
    Character.all.each_with_index do |ch, index|
      puts "#{index+1}.#{ch.name}"
    end
    
  end
  
  
  
  
  
  
end   
