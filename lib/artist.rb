class Artist 
  attr_accessor:name,:songs
    @@song_count=0
    def initialize(name)
      @name=name
      @songs=[]
    end 
  
  def self.song_count
    @@song_count
  end
    
  def add_song(song)
    @songs<<song
    song.artist=self
    @@song_count+=1
  end
  
  def add_song_by_name(song)
  song_obj=Song.new(song)
  @songs << song_obj
  song_obj.artist=self
  @@song_count+=1
  end
  
end