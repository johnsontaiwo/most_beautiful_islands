class  MostBeautifulIslands::CLI
  
  def call
    puts ""
    puts        "-------Take a look at  the 16 Most Beautiful islands in the world-------"
    puts ""
   start 
  end
  
  def island_list
    MostBeautifulIslands::Islands.all_islands.each do |island| 
      
      puts "#{island.name}"
    end
  end

  def goodbye
    puts "Have a good day"
  end

  def user_prompt
      puts ""  
      puts "--------Print the number of the island  you want to know more about--------"
      puts "--------Enter list to see the islands again--------"
      puts "--------Enter exit to end the program---------"
  end

  def start
   MostBeautifulIslands::Scraper.scrape_islands
   island_list

      user_prompt
    puts ""
      input = nil
      while input != "exit"
      input = gets.strip
      
      if input.to_i > 0
        island = MostBeautifulIslands::Islands.find(input.to_i - 1)
        if island
           puts island.description
           puts         "-------------------------"
           puts         "-------------------------"
           user_prompt
         else
           puts 'Please select a correct island number.'
           user_prompt
         end
      elsif input == "list"
         island_list
        puts          "---------------------------"
      else
        puts goodbye
      end
    end
 end
end