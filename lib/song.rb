class Song 
    attr_accessor :name, :artist, :genre

    @@genres = []
    @@count = 0
    @@artists = []

    def initialize(name, artist, genre)
        @name= name
        @artist=artist
        @genre=genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def name
        @name
    end

    def self.genres
        @@genres = @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists = @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end 

luis=Song.new('I like bitches', "Luis", "Rap")
puts luis
