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

  def save
    Dog.all << self
  end

  def self.clear_all
    @@all.clear
  end

  def self.print_all
    puts Dog.all.map { |dog| dog.name}
  end

end