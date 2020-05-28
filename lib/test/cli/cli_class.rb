require 'pry'

class CLI
  
  def call 
    
    puts "Welcome to 'Breaking Bad' Tv show facts!" 
    puts"========================="
    
    API.new.get_characters
    
    self.list_characters
    #API.new.get_quote
  end
  
  #---------------------------
  
  def list_characters
    puts "Do you want to know all the characters of this show?"
    puts "\n"
    puts "enter 'y'  to continue , any other key to 'exit'"
    puts "\n"
    input = gets.chomp.downcase
    
    if input == "y"
      puts "Here you can see a list with all the characters:"
      puts "------------------------------"
      sleep(1)
      display_list_ch
      puts "------------------------------"
      character_choise
      puts "------------------------------"
      sleep(1)
      list_characters
      puts "------------------------------"
      
    else
      puts "Bye!Come back later."
    end 
    
   
  end 
  
  
  #-------------------------- 
  
  
  
  def character_choise
    
    puts "If you want to find out few facts about any character enter a number."
    puts "------------------------------"
    index = gets.chomp.to_i - 1
    
    until index.between?(0, Character.all.length - 1)
      puts "Sorry, this is an invalid choice.Please enter another number"
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
    puts "\nHis/her occupation is: #{ch_inst.occupation.join()}"
    puts "------------------------------"
    sleep(1)
    puts "\nand his/her nickname is #{ch_inst.nickname}"
    puts "------------------------------"
    sleep(1)
    puts "\nThis character was portreyed  by #{ch_inst.actor}"
    puts "\n"
    

    
  end 
  
  #--------------------------
  
  def display_list_ch
    Character.all.each.with_index(1) do |ch, index|
      puts "#{index}. #{ch.name}"
    end
    
  end
  
  
  
  end   