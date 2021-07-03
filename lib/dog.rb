class Dog
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name=name
        self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        Dog.all.each {|dog| puts dog.name}
    end

    def save
        Dog.all << self
    end

end