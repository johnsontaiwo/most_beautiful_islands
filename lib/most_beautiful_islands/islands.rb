class MostBeautifulIslands::Islands
  attr_accessor :name, :description
   @@all = []
   #@@details = []
  def initialize(name = nil)
   @name = name
   @@all << self
  end

   def self.scrape_island_names
    doc = Nokogiri::HTML(open("http://www.planetware.com/world/most-beautiful-islands-in-the-world-sey-1-2.htm"))
    names = doc.search("div h2.sitename")
    islands_names = names.collect.with_index(1){|island| new(island.text.strip)}
    
  end
   
   def self.all
     @@all |= scrape_world_best_islands
   end

   def self.scrape_world_best_islands
    doc = Nokogiri::HTML(open("http://www.planetware.com/world/most-beautiful-islands-in-the-world-sey-1-2.htm"))
    
    islands_names = doc.search("div h2.sitename")
    islands = islands_names.collect{|island| island.text.strip}
    
  end
  
  def self.details
   doc = Nokogiri::HTML(open("http://www.planetware.com/world/most-beautiful-islands-in-the-world-sey-1-2.htm"))
    @details = doc.search("div.site_desc p")

    site_details = @details.collect {|detail| detail.text.strip}
    
    site_details[2]
    
  
 
  end

     def self.island_list
      self.all.each do |island|
      puts "#{island}"
      end
    end

    def self.start
     self.island_list

    doc = Nokogiri::HTML(open("http://www.planetware.com/world/most-beautiful-islands-in-the-world-sey-1-2.htm"))
    @details = doc.search("div.site_desc p")
     site_details = @details.collect {|detail| detail.text.strip}
     
     puts "Enter between 1 - 16 to indicate which  island  you want more info on. "
     puts "Enter list to see the islands again."
     puts "Enter exit to end the program."
    
      input = nil
      while input != "exit"
      input = gets.strip
      
      if input == "list"
        self.island_list
      
      elsif input == "1"
      puts  "#{site_details[0]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

      elsif input == "2"
        puts  "#{site_details[2]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

     elsif input == "3"
       puts  "#{site_details[4]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list
     
     elsif input == "4"
      puts  "#{site_details[6]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list
     
     elsif input == "5"
      puts  "#{site_details[8]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

     elsif input == "6"
      puts  "#{site_details[10]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list
 
     elsif input == "7"
      puts  "#{site_details[12]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

     elsif input == "8"
      puts  "#{site_details[14]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

     elsif input == "9"
      puts  "#{site_details[16]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

     elsif input == "10"
      puts  "#{site_details[18]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list
     
     elsif input == "11"
      puts  "#{site_details[20]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

   elsif input == "12"
    puts  "#{site_details[22]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list
    
    elsif input == "13"
      puts  "#{site_details[24]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

   elsif input == "14"
    puts  "#{site_details[26]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

  elsif input == "15"
    puts  "#{site_details[28]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

 elsif input == "16"
   puts  "#{site_details[30]}"
       puts        "--------------------- Islands list -----------------------"
       self.island_list

    else
      puts " Goodbye. "

    end
      
    
    end

        





  #def self.description(island)
    #doc = Nokogiri::HTML(open("http://www.planetware.com/world/most-beautiful-islands-in-the-world-sey-1-2.htm"))
    #islands_description = doc.search("div.site_desc p")
    #description = islands_description.collect{|description| }
   #def self.top_16_islands
     #scrape_world_best_islands.collect{|island| new(island.text.strip)}
end
end