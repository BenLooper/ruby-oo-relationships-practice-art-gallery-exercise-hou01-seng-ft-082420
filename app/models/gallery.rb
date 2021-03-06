class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all.push(self)
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    self.paintings.collect {|painting| painting.artist}
  end

  def artist_names
    self.artists.collect {|artist| artist.name}
  end

  def most_expensive_painting
    self.paintings.max {|painting| painting.price}
  end
  
    

end
