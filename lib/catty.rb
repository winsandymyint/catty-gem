require "catty/version"
require 'engtagger'

class Catty
	ADJECTIVES = %w[so such very many much].freeze
    def self.process(str)
    	str = str.downcase

    	tagger = EngTagger.new
    	tagged_str = tagger.add_tags(str)
    	phrases= tagger.get_nouns(tagged_str).keys

    	phrases.each_with_index.map do |phrase, i|
    		"#{adjective(i)} #{noun}."
    	end
    	phrases << "wow."

    	phrases.join('')
  end

  private
  def adjective(i)
  	ADJECTIVES[i % ADJECTIVES.size]
  end
end
