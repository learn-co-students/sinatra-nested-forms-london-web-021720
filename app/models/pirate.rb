class Pirate

    attr_reader :name, :weight, :height

    @@all = []

    def initialize(name, weight, height)
        @name = name
        @weight = weight
        @height = height
        @@all << self
    end

    def self.all
        @@all
    end
end