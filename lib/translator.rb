require "yaml"
require 'pry'
def load_library(path)
 emoticons = YAML.load_file(path)
 emoticons_hash = {}
  
  emoticons_hash['get_meaning'] = {}
  emoticons_hash['get_emoticon'] = {}
  
  emoticons.each do |k, v|
    emoticons_hash['get_meaning'][v.last] = k
    emoticons_hash['get_emoticon'][v.first] = v.last
  end
  
  emoticons_hash
  
end

def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  j_emo = emoticon_hash['get_emoticon'][emoticon]
    if j_emo == nil
     return "Sorry, that emoticon was not found"
  end 
  j_emo
  
end

def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(path)
  e_mean = emoticon_hash['get_meaning'][emoticon]
  if e_mean == nil
     return "Sorry, that emoticon was not found"
  end 
  e_mean
    
end







