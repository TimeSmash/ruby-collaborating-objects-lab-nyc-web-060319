class MP3Importer

    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        #returns array of all music files
        MP3Importer.new(path)
    end

    def import
        
    end
end


# fp1 = "files/mp3s"
# i1 = MP3Importer.new(fp1)