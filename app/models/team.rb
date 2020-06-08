class Team
    attr_accessor :name, :motto
    @@all = []
    
    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end

    def self.clear
        self.all.clear
    end

end