class Hero
    attr_accessor :name, :power, :biography
    def initialize(attributes)
        attributes.each {|key, value| self.send("#{key}=", value)}
    end
end