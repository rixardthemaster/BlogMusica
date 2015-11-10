class Cantante < ActiveRecord::Base
 has_many :cantante_cancion
 has_many :cancion, :through => :cantante_cancion
end
