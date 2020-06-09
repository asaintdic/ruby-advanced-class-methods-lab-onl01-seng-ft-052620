class Song
  attr_accessor :name, :artist_name
  @@all = []
   

 
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
  song = self.new
  self.all << song
  song 
  end 
  
  def self.new_by_name(string)
    song = self.new
    song.name = string
    song
  end
 
 
  def self.create_by_name(string)
    song = self.new
    song.name = string
    @@all << song
    song
  end
  def self.find_by_name(string)
    self.all.find {|names| names.name  == string}
  end  
    
   def self.find_or_create_by_name(string)
     self.name
     self.name == find_by_name(string) ? self.name : create_by_name(string)
  end
    
     
  #def self.alphabetical (sort)
  #def self.new_from_filename
  #def self.creat_from_file_name
  #def self.destroy_all


end
