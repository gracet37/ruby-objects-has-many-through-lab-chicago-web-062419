# The Genre class needs a class variable @@all that begins as an empty array.
# The Genre class needs a class method .all that lists each genre in the class variable.
# A genre should be initialized with a name and be saved in the @@all array.
# The Genre class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that genre.
# The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.


class Genre

    attr_accessor :name, :genre, :artist

    @@all = []
   
    def initialize(name)
        @name = name
        @@all << self
    end 

    def songs
        Song.all.select do |song|
            if song.genre == self
                song.name
            end 
        end 
    end

    def self.all
       @@all
    end

    def artists
        Song.all.collect do |song|
            if song.genre == self
                song.artist
            end 
        end
    end 

end 

# rap = Genre.new("rap")
# pop = Genre.new("pop")
# hip_hop = Genre.new("hip_hop")

# Genre.all
