# require modules here

require 'pry'
require 'yaml'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons_hash = {:get_meaning => {},  :get_emoticon => {} }
  emoticons.each do |meaning, symbols|
    emoticons_hash[:get_emoticon][symbols[0]] =  symbols[1]
    emoticons_hash[:get_meaning][symbols[1]] = meaning
end
emoticons_hash
end 

def get_japanese_emoticon(file_path, emoticon)
  result = load_library(file_path)[:get_emoticon][emoticon]
  if result
    return result
  else
    return "Sorry, that emoticon was not found"
  end 

end

def get_english_meaning(file_path, emoticon)
   result = load_library(file_path)[:get_meaning][emoticon]
   if result
     return result
     else
    return "Sorry, that emoticon was not found"
  end 
     
   
end