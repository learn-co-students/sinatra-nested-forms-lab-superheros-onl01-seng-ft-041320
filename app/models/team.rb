class Team
 @@all = []
 attr_accessor :name, :motto

 def initialize(params)
    params.each do |k, v|
        self.send("#{k}=", v) unless k == "heroes"
    end
    @@all << self
 end

 def self.all 
    @@all
 end
 
end