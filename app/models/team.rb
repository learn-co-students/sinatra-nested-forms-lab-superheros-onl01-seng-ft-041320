class Team
    attr_accessor :name, :motto
  
    @@all_team = []
  
    def initialize(params)
      @name = params[:name]
      @motto = params[:motto]
      @@all_team << self
    end
  
    def self.all
      @@all_team
    end
  
    def self.clear
      @@all_team = []
    end
  
  end