# TO DO: write a method that takes a float as an argument and
# returns it converted from kph (km/h) to mph (mi/h)

def speed_in_mph(kph)
    if(kph.is_a?(Float))
        return kph * 0.6213711922
end