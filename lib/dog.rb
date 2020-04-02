require 'pry'

class Dog

  @@all = []
  @@names = []

  def initialize(name)
    @name = name
    self.save
    @@names << name
    #save_name
  end

  #def save_name
  #  @@names << @name
  #end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all
    @@names.uniq.each { |dog| puts dog }
  end

  def self.clear_all
    @@all.clear
  end

end