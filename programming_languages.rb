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
  languages.each do |language, hash|
    hash.each do |attribute, data|
    puts language
    binding.pry
    end
  end 
  return new_hash
end
reformat_languages(languages)