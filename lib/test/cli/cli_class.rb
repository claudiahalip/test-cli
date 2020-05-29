require 'pry'

class CLI
  
  def call 
    
    puts "Welcome to 'Breaking Bad' Tv show facts!" 
    puts"========================="
    
    API.new.get_characters
    self.list_characters
    API.new.get_quote
    #self.quotes
  end
  
  

  
  def list_characters
    puts "Do you want to know all the characters in this show?"
    puts "\n"
    puts "enter 'go' to continue and any other key to 'exit'"
    puts "\n"
    input = gets.chomp.downcase
    
    if input == "go"
      puts "Here you can see the list with all the characters:"
      puts "------------------------------"
      sleep(1)
      display_list_ch
      puts "------------------------------"
      character_choise
      puts "------------------------------"
      # quotes
      # puts "\n"
      # sleep(1)
      # puts "Now your back to the main page."
      # puts "------------------------------"
      list_characters
    else
      puts "Bye!Come back later."
    end 
    
   
  end 
  
  
  
  
  
  
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
    quotes(ch_inst)
  end
  
  
  
  
  
  
  
  def character_details(ch_inst)
    sleep(1)
    puts ch_inst.name
    puts "------------------------------"
    sleep(1)
    puts "\nHis/her occupation is: #{ch_inst.occupation.join(", ")}."
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
  
  
  def quotes(ch_inst)
    puts "Do you want to see some quotes from this character?"
    puts "press 'y' to see it or any other key to go back to the main menu"
    input = gets.chomp
    if input == "y"
      
      ch_inst.ch_quotes.each.with_index do |q, index|
        puts "#{index}. #{q}"
      end
      #puts "test #{ch_inst.ch_quotes} "   #the quote of character chosen 
      
      puts"\n"
      
    end
  end 
  
  
  
  end   