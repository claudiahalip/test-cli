require 'pry'

class API
  
  def get_characters
    
    puts "I'm in API"
    
    url = "https://breakingbadapi.com/documentation"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    
    #binding.pry
    
  end 
  
end 