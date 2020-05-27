require 'pry'

class API
  
  def get_characters
    
    puts "I'm in API"
    
    url = "https://www.breakingbadapi.com/api/characters"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    char_arr = JSON.parse(response)
    
    char_arr.each do |ch|
      ch_inst = Character.new 
      
      
      ch_inst.id = ch["char_id"]
      ch_inst.name = ch["name"]
      ch_inst.occupation =  ch["occupation"]
      ch_inst.image = ch["img"]
      ch_inst.nickname = ch["nickname"]
      ch_inst.actor = ch["portrayed"]
      
    end 
      
                          
    
    
   
    
  end 
  
end 