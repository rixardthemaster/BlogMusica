class CantanteCancion < ActiveRecord::Base
  belongs_to :cantante
  belongs_to :cancion
end
