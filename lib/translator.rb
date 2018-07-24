# require modules here
require "yaml"
require "pry"


def load_library(path)
  # code goes here emoticons.yml
  new_hash = {
    "get_emoticon" => {},
    "get_meaning" => {}
  }
  emo_hash = YAML.load_file(path)
  emo_hash.each do |key, value|
    new_hash["get_emoticon"][value[0]] = value[1]
    new_hash["get_meaning"][value[1]] = key
  end
  new_hash
end

def get_japanese_emoticon(path, emo)
  # code goes here
  new_hash = load_library(path)
  if new_hash["get_emoticon"][emo] == nil
    "Sorry, that emoticon was not found"
  else
    new_hash["get_emoticon"][emo]
  end
end

def get_english_meaning(path, emo)
  # code goes here
  new_hash = load_library(path)
  if new_hash["get_meaning"][emo] == nil
    "Sorry, that emoticon was not found"
  else
    new_hash["get_meaning"][emo]
  end
end