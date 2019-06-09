class Song

    attr_accessor :name, :genre

    attr_reader :artist

    def initialize(name)
        @name = name
    end

    def artist=(artist)
        @artist = artist
    end

    def self.new_by_filename(filename) #Filename is a string "Artist - Title - genre.mp3"
        filename_arr = filename.split(" - ") #Gives arr ["Artist", "Title", "Genre"]
        file_artist = filename_arr[0]
        file_song_name = filename_arr[1]
        file_genre = filename_arr[2].split(".mp3")[0]

        new_song = Song.new(file_song_name) #s1 @name - "Artist - Title - genre.mp3"
        new_song.genre=(file_genre) 
        
        #If artist already exists, give song existing artist, if artist doesn't exist create new one 
        #Look at filename's artist, compare to @name of all artists, if match, assign new_song.artist= matching artist
        # Artist. 
        new_song.artist= Artist.find_or_create_by_name(file_artist)
        new_song.artist.add_song(new_song)
        new_song
    end

end

# s1 = Song.new("Artist - Title - Genre")

s1 = Song.new_by_filename("Artist - Title - Genre")

binding.pry