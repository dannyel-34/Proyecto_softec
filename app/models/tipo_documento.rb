class TipoDocumento < ActiveRecord::Base
    
    
    # Validar que los atributos sean obligatorios
    validates :sigla, :presence => true
    validates :nombre, :presence => true
    
    # valida la longitud de un campo, tanto la longitud minima como la maxima
    validates :nombre, length: { minimum: 5, maximum: 50 }
    validates :sigla, length: {minimum: 2, maximum: 2 }
   
    
    def self.search(search, page)
        where(['upper(nombre) like ?', "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
    end
    
end

