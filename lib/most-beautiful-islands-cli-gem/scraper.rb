require 'pry'

class MostBeautifulIslands::Scraper

  def self.scrape_islands
    doc = Nokogiri::HTML(open("http://www.planetware.com/world/most-beautiful-islands-in-the-world-sey-1-2.htm"))
   
    
    doc.search(".article_block").each do |block|
      
      name = block.css("h2.sitename").text
      desc = block.css(".site_desc > p").text
       if !name.empty? && !desc.empty?
         MostBeautifulIslands::Islands.new(name, desc)
      end
    end
  end

end