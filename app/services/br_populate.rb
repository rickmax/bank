module BrPopulate
    def self.states
        file = File.read('lib/states.json')
        JSON.parse(file) 
    end

    def self.capital?(city, state)
        city["name"] == state["capital"]
    end

    def self.populate
        states.each do |state|
        region_obj = Region.find_or_create_by(:name => state["region"])
        state_obj = State.new(:acronym => state["acronym"], :name => state["name"], :region => region_obj)
        state_obj.save

            state["cities"].each do |city|
                c = City.new
                c.name = city["name"]
                c.state = state_obj
                c.capital = capital?(city, state)
                c.save
            end
        end
    end
end