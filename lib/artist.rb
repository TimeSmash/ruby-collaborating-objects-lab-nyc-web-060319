require 'pry'
class Artist

    attr_accessor :name
    attr_reader :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end


    def self.find_or_create_by_name(name)
        #look through all Artist instances, find one whose @name = name
        if self.all.find{|artist| artist.name == name} 
            self.all.find{|artist| artist.name == name} 
        else
            Artist.new(name)
        end
    end

    def save
        @@all << self
    end

    def add_song(song)
        self.songs << song
    end

    def print_songs
        self.songs.each { |song| puts song.name}        
    end

end

kira_miki = Artist.new("Kira-miki")

# Artist.find_or_create_by_name("Kira-miki")
# binding.pry