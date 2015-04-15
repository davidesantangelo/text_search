require "text_search/base"

module TextSearch
 	class Text
 		def initialize(text, words=[])
 			@text = text
 			@words = words
 		end

 		def search
 			TextSearch::Base.counter(@text.downcase, @words)
 		end

 		def words
 			TextSearch::Base.words(@text.downcase)
 		end
 	end
end