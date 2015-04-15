module TextSearch
 	class Base
 		def self.counter(text, words)
 			results = []
 			hash = Hash.new

 			words.each do |word|
 				hash[word] = text.scan(/#{word}/).size
 				results.push(hash)
 				hash = Hash.new
 			end
 			return results
 		end

 		def self.words(text)
 			text.split(/\W+/)
 		end
 	end
end