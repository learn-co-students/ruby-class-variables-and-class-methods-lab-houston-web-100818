require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.count_hash(array)
        hash = {}
        array.each do |item|
            if hash[item] != nil
                hash[item] += 1
            else
                hash[item] = 1
            end
        end
        hash
    end

    def self.genre_count
        self.count_hash(@@genres)
    end

    def self.artist_count
        self.count_hash(@@artists)
    end

end