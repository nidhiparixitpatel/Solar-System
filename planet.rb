class Planet

    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

    def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
        @name = name
        @color = color
        @mass_kg = mass_kg
        @distance_from_sun_km = distance_from_sun_km
        @fun_fact = fun_fact
        unless @mass_kg > 0 || @distance_from_sun_km > 0
            raise ArgumentError, 'You must provide a postive numeric argument to this method.'
    end

    def summary
        return "#{@name} is a #{@color} planet #{@distance_from_sun_km} km from the sun and has a mass of #{@mass_kg} kg. #{@fun_fact}"
    end

end