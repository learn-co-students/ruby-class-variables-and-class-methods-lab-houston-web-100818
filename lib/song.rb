require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count 
    @@artist_count

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist 
        @@genres << genre 
        @@count += 1

    end


def self.count
    @@count
end

def self.artists
    arr = []
    @@artists.each do |artist|
        arr << artist unless arr.include?(artist)
    end
    arr
end

def self.genres
    arr = []
    @@genres.each do |genre|
        arr << genre unless arr.include?(genre)
    end
    arr
end

def self.genre_count
    result = Hash.new(0)
    @@genres.each do |genre|
        result[genre] += 1
    end
    result.each do |genre, count|
    end
end

def self.artist_count
    result = Hash.new(0)
    @@artists.each do |artist|
        result[artist] += 1
    end
    result.each do |artist, count|
    end
end

end