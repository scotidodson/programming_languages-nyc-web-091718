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
  oo_languages = languages[:oo].keys
  functional_languages = languages[:functional].keys
  
  languages.each do |style, hash|
    hash.each do |language, data|
      new_hash[language] = data
      puts new_hash
      binding.pry
      if oo_languages.include?(language) && functional_languages.include?(language)
        new_hash[language][:style] = [:oo, :functional]
      else
        new_hash[language][:style] = []
        new_hash[language][:style] << style
      end 
    end
  end 
  puts new_hash

end
reformat_languages(languages)