class MostBeautifulIslands::Islands
  attr_accessor :name, :description
   @@all = []
  
  

  def initialize(name = nil , description = nil)
   @name = name
   @description = description
   @@all << self
  end

  

  def self.all_islands
    @@all
   end

   def self.find(index)
    @@all[index]
   end


end