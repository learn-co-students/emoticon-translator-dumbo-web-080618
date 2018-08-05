require "yaml"

def load_library(file_path)
  path = YAML.load_file(file_path)
  hash = {}
  
  hash["get_meaning"] = {}
  hash["get_emoticon"] = {}
  
  path.each do |english, emoticons|
    hash["get_meaning"][emoticons.last] = english
    hash["get_emoticon"][emoticons.first] = emoticons.last
end
 hash
end

def get_japanese_emoticon (file_path, emoticon)
  hash = load_library(file_path)
  result = hash["get_emoticon"][emoticon]
  if result == nil
    return "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(file_path, emoticon)
  hash = load_library(file_path)
  result = hash["get_meaning"][emoticon]
  if result == nil
    return "Sorry, that emoticon was not found"
  end
  result
end