# require modules here
require 'yaml'
def load_library (file_path)
  # code goes here
  library = {"get_meaning"=>{}, "get_emoticon"=>{}}
  YAML.load_file(file_path).each do |meaning, dict|
    english, japanese = dict
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end
  library
end

def get_japanese_emoticon (file_path, english_emoticon)
  # code goes here
  library = load_library(file_path)
  emoticon = library["get_emoticon"][english_emoticon]
  if emoticon
    emoticon
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning (file_path, meaning)
  # code goes here
  library = load_library(file_path)
  meaning = library["get_meaning"][meaning]
  if meaning
    meaning
  else
    "Sorry, that emoticon was not found"
  end
end