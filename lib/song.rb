# The Song class needs a class variable @@all that begins as an empty array.
# The Song class needs a class method .all that lists each song in the class variable.
# A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.

class Song

    @@all = []

    attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end 

    #list each song in the class variable 
    def self.all
        @@all
    end


end 

# ninetynine_problems = Song.new('99 Problems', 'Jay Z', 'Rap')

# blank_space = Song.new("Blank Space", "Taylor Swift", "Pop")

# lost = Song.new("Lost", "Frank Ocean", "RnB")

# p Song.all #returns all