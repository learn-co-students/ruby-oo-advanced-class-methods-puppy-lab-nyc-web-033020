require 'pry'

class Dog

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def self.clear_all
    @@all.clear()
  end

  def self.print_all
    @@all.each { |puppy| puts puppy.name }
  end

  def save
    @@all << self
  end

  def self.name
    @name
  end

end
