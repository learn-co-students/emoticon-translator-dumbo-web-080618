require 'yaml'
require 'pry'


def load_library(file)
emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
YAML.load_file(file).each do |emotion, array|
  emoticons["get_meaning"][array[1]] = emotion
  emoticons["get_emoticon"][array[0]] = array[1]
  end
  emoticons
end
def get_japanese_emoticon(file,emoticons)
  new_hash = load_library(file)
  translation = new_hash["get_emoticon"][emoticons]
  if translation
    translation
  else
    return  "Sorry, that emoticon was not found"
  end
end




def get_english_meaning(file,emoticons)
  new_hash = load_library(file)
  translation = new_hash["get_meaning"][emoticons]
  if translation
    translation
  else
    return  "Sorry, that emoticon was not found"
  end
end
