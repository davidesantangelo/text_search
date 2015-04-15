require 'nokogiri'
require 'open-uri'
require 'open_uri_redirections'
require "text_search/base"

module TextSearch
 	class Web
 		def initialize(url, words=[])
 			@url = url
 			@words = words
 			fetchtext
 		end

 		def search
 			TextSearch::Base.counter(@text.downcase, @words)
 		end

 		def words
 			TextSearch::Base.words(@text.downcase)
 		end
 	private
 		def fetchtext
	    @url = "http://#{@url}" if (!URI.parse(@url).scheme)
	    @text = ""
	    begin                                                            
	      html = Nokogiri::HTML(open( @url, :allow_redirections => :safe))         
	      html.css('script').remove    
	      @text =  html.at('html').inner_text                              
	    rescue Exception => e                                        
	      return @text                                        
	    end     
	    return @text
	  end
 	end
end