require 'pry'

class Song

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize( name, artist, genre )
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@all << self
        @@count += 1
    end

    attr_accessor :name, :artist, :genre

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres        
        @@genres.uniq
    end

    def self.genre_count
        @@genres.each do | item | 
            if @@genre_count.has_key?(item)
                @@genre_count[item] += 1
            else
                @@genre_count[item] = 1
            end
        end
        @@genre_count
    end    

    def self.artist_count
        @@artists.each do | item |
            if @@artist_count.has_key?(item)
                @@artist_count[item] += 1
            else
                @@artist_count[item] = 1
            end
        end
        @@artist_count
    end
end
