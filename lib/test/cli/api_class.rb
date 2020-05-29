require 'pry'

class API
  
  
 def initialize
    
    main_url = "https://www.breakingbadapi.com/api/"
    main_uri = URI(main_url)
    main_response = Net::HTTP.get(main_uri)
    @@all = JSON.parse(main_response)
    
    
  end 
  
  
  
  def get_characters
    
    # url = h["characters"]      #"https://www.breakingbadapi.com/api/characters"
    # uri = URI(url)
    #response = Net::HTTP.get(URI( h["characters"]))
    char_arr = JSON.parse( Net::HTTP.get(URI(@@all["characters"])))
    
    char_arr.each do |ch|
      ch_inst = Character.new 
      
      
      ch_inst.id = ch["char_id"]
      ch_inst.name = ch["name"]
      ch_inst.occupation =  ch["occupation"]
      ch_inst.nickname = ch["nickname"]
      ch_inst.actor = ch["portrayed"]
      
    end 
    
    get_quote
      
  end 
  
  
  def get_quote
    
    quote_arr = JSON.parse( Net::HTTP.get(URI(@@all["quotes"])))
    quote_arr.each do |q|
      quote_inst = Quote.new
      
      quote_inst.id = q["quote_id"]
      quote_inst.quote = q["quote"]
      quote_inst.character = q["author"]
    end 
  end 
  
  
   
  
end 