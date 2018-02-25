require "yaml"
require "pry"

# #load_library
#   accepts one argument, the file path
#   return value
#     returns a hash
#     has two keys, 'get_meaning' and 'get_emoticon'
#     the keys 'get_meaning' and 'get_emoticon' point to inner hashes
#     the keys inside the 'get_meaning' hash are the Japanese emoticons
#     the emoticon keys inside the 'get_meaning' hash point to their meanings
#     the keys inside the 'get_emoticon' hash are the English emoticons
#     the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents

def load_library(path)
  emoticons = YAML.load_file(path)
  new_hash = {}
  new_hash["get_meaning"] = {}
  new_hash["get_emoticon"] = {}
  emoticons.each do |meaning, emoticon_array|
    emoticon_array.each do [emoticon]
      new_hash["get_meaning"] = emoticon[1]
      new_hash["get_emoticon"] = emoticon[0]
      new_hash["get_emoticon"][emoticon[0]] = emoticon[1]
    end
    new_hash["get_meaning"][emoticon[1]] = meaning
  end
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
