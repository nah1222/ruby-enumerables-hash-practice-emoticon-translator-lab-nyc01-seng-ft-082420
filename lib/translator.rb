# require modules here
require 'yaml'
require 'pry'
def load_library
  # code goes here
    emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  
  YAML.load_file(path).each do |meaning, describe|
     #set eng, jan from describe, so eng would be the first value, jan the second
     eng, jan = describe
     emoticons["get_meaning"][jan] = meaning
     emoticons["get_emoticon"][eng] = jan
  end
  emoticons
end
  end
  emoticon_lib
end
end

def get_japanese_emoticon(emoticon_file, emoticon)
  # code goes here
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib['get_emoticon'][emoticon]
  japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
end	end
end

def get_english_meaning
  # code goes here
end