class Hero
    @@all = []
    attr_accessor :team, :name, :power, :biography
  
    def initialize(params)
      params.each do |k, v|
          self.send("#{k}=", v)
      end
      @@all << self
    end
  
    def self.all
      @@all
    end
  
  end 