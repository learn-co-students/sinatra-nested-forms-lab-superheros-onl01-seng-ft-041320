class Team 
    attr_accessor :name, :motto, :heroes
  
    def initialize(team_details)
      @name = team_details[:name]
      @motto = team_details[:motto]
      @heroes = team_details[:heroes]
    end
end