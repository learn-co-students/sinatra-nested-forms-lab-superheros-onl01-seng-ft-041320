class Team
    attr_accessor :name, :motto, :members

    def initialize(attributes)
        attributes.each {|key, value| self.send("#{key}=", value)}
        populate_members(@members.dup)
    end

    def populate_members(heroes)
        @members = []
        heroes.each do |hero|
            @members << Hero.new(hero)
        end
    end
end