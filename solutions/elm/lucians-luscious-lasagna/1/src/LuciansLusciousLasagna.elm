module LuciansLusciousLasagna exposing (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes)
layer =3

-- TODO: define the expectedMinutesInOven constant
expectedMinutesInOven = 40
-- TODO: define the preparationTimeInMinutes function
preparationTimeInMinutes layers =
    layers * 2
-- TODO: define the elapsedTimeInMinutes function

elapsedTimeInMinutes layers minutes =
        preparationTimeInMinutes layers + minutes
