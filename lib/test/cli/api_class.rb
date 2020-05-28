require 'pry'

class API
  
  def get_characters
    
    main_url = "https://www.breakingbadapi.com/api/"
    main_uri = URI(main_url)
    main_response = Net::HTTP.get(main_uri)
    h = JSON.parse(main_response)
    
    url_arr = []
    h.each do |k,v| 
      url_arr << v
    end 
   
    
    url = "https://www.breakingbadapi.com/api/characters"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    char_arr = JSON.parse(response)
    
    char_arr.each do |ch|
      ch_inst = Character.new 
      
      
      ch_inst.id = ch["char_id"]
      ch_inst.name = ch["name"]
      ch_inst.occupation =  ch["occupation"]
      ch_inst.nickname = ch["nickname"]
      ch_inst.actor = ch["portrayed"]
      
    end 
      
                          
  
   
    
  end 
  
end 