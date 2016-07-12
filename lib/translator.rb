require "yaml"
def load_library(file_name)

  emoticons = YAML.load_file(file_name)
  hash_emo = {
    # "get_meaning" => {},
    # "get_emoticon" => {}
  }
  emoticons.each do |meaning,emoticon|

    hash_emo["get_meaning"] = {emoticon[1] => ""}

    hash_emo["get_emoticon"] = {emoticon[0] => ""}

end
emoticons.each do |meaning,emoticon|

    hash_emo["get_meaning"][emoticon[1]] = meaning.to_s
	hash_emo["get_emoticon"][emoticon[0]] = emoticon[1]
end
  return hash_emo
end



def get_japanese_emoticon(file_name, emoticon)
  emo_hash = load_library(file_name)
  if emo_hash["get_emoticon"][emoticon]
    return emo_hash["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
end
end

def get_english_meaning(file_name,emoticon)
  emo_hash = load_library(file_name)
  if emo_hash["get_meaning"][emoticon]
    return emo_hash["get_meaning"][emoticon]
  else
  return "Sorry, that emoticon was not found"
end
end
