class Cancion < ActiveRecord::Base
  has_many :cantante_cancion
  has_many :cantante, :through => :cantante_cancion
end
