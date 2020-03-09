class Hero

    attr_reader :name, :power, :bio
    @@all = []

    def initialize(hash)
        @name = hash[:name]
        @power = hash[:power]
        @bio = hash[:bio]
        @@all.push(self)
    end

    def self.all
        @@all
    end

end