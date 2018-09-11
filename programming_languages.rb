require "pry"

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
      },
    :javascript => {
      :type => "interpreted"
      },
    :python => {
      :type => "interpreted"
      },
    :java => {
      :type => "compiled"
      }
    },
  :functional => {
    :clojure => {
      :type => "compiled"
      },
    :erlang => {
      :type => "compiled"
      },
    :scala => {
      :type => "compiled"
      },
    :javascript => {
      :type => "interpreted"
      }
    }
}

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |language, data|
      new_hash[language] = {:type => language[:type], :style => []}
    puts language
    binding.pry
    end
  end 
  return new_hash
end
reformat_languages(languages)