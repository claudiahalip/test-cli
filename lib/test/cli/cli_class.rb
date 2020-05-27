require 'pry'

class CLI
  
  def call 
    
    puts "Welcome to 'Breaking Bad' Tv show facts!" 
    puts"========================="
    
    API.new.get_characters
    
    self.list_characters
    
  end
  
  #---------------------------
  
  def list_characters
    puts "Do you want to see a list of all the characters?"
    puts "------------------------------"
    puts "'yes' to continue , any other key for 'exit'"
    puts "------------------------------"
    input = gets.chomp.downcase
    
    if input == "yes"
      puts "Here is a list with all the characters:"
      puts "------------------------------"
      sleep(4)
      display_list_ch
      puts "------------------------------"
      character_choise
      puts "------------------------------"
      list_characters
      puts "------------------------------"
    else
      puts "Bye!Come back later."
    end 
    
   #-------------------------- 
  end 
  
  def character_choise
    
    puts "What character are you interesting in? Enter a number, please!"
    puts "------------------------------"
    index = gets.chomp.to_i - 1
    
    until index.between?(1, Character.all.length - 1)
      puts "Sorry, this is an invalid choise"
      index = gets.chomp.to_i - 1
    end 
      
    
    
    ch_inst = Character.all[index]
    
    character_details(ch_inst)
  end
  
  
  
  #-------------------------
  
  
  
  def character_details(ch_inst)
    sleep(1)
    puts ch_inst.name
    puts "------------------------------"
    sleep(1)
    puts "\nHis occupation is: #{ch_inst.occupation.join()}"
    puts "------------------------------"
    sleep(1)
    puts "\nand his nickname is #{ch_inst.nickname}"
    puts "------------------------------"
    sleep(1)
    puts "\nThis character was portreyed  by #{ch_inst.actor}"
    puts "xxxxxxxxxxxxxxxxxxx"
    

    
  end 
  
  #--------------------------
  
  def display_list_ch
    Character.all.each_with_index do |ch, index|
      puts "#{index+1}.#{ch.name}"
    end
    
  end
  
  
  
  
  
  
end   
