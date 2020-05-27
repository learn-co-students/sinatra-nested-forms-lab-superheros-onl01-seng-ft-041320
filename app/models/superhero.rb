class Superhero
    attr_accessor :name, :power, :bio
  
    @@all_superheroes = []
  
    def initialize(params)
      @name = params[:name]
      @power = params[:power]
      @bio = params[:bio]
      @@all_superheroes << self
    end
  
    def self.all
        @@all_superheroes
    end
  
  end