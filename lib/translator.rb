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
  # binding.pry
  emoticons.each_with_object({}) |(meaning, emoticon_array), new_hash|
    binding.pry
    new_hash["get_meaning"] = {}
    new_hash["get_emoticon"] = {}
    binding.pry
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
