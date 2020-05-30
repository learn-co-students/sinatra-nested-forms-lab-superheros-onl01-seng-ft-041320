class Hero #belongs to a team
    attr_accessor :name, :power, :bio
    @@all = []
  
    def initialize(hero_details)
      @name = hero_details[:name]
      @power = hero_details[:power]
      @bio = hero_details[:bio]
  
      @@all << self
    end
  
    def self.all
      @@all
    end
  
  end