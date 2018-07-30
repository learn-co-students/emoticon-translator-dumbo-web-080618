# require modules here
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  result = {'get_meaning' => {}, 'get_emoticon' => {}}
  emoticons.each do |meaning, emoticons|
    result['get_meaning'][emoticons[1]] = meaning
    result['get_emoticon'][emoticons[0]] = emoticons[1]
  end
  result
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  emoticon = emoticons['get_emoticon'][emoticon]
  if emoticon == nil
    return "Sorry, that emoticon was not found"
  else
    return emoticon
  end
end

def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
  meaning = emoticons['get_meaning'][emoticon]
  if meaning == nil
    return "Sorry, that emoticon was not found"
  else
    return meaning
  end 
end
