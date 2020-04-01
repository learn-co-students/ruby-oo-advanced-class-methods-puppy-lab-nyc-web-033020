require 'pry'

class Dog
  attr_reader :name
  @@all = [ ]
  @@names = [ ]
  def initialize(name)
    @name = name
    @@all << self
    @@names << self.name
    save
  end

  def self.all
    #binding.pry
    @@all.uniq 
  end

  def self.clear_all
    @@all = [ ]
    @@names = [ ]
  end

  def self.print_all
   puts @@names
  end

  def save
    @@all << self
  end

end
