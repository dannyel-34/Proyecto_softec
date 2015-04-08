class Departamento < ActiveRecord::Base
    
    has_many :dato_estudiantes
    
    # Validar que los astributos sean obligatorios
    validates :nombre, :presence => true
    
    # valida la longitud de un campo, tanto la longitud minima como la maxima
    validates :nombre, length: { minimum: 5, maximum: 55 }
    
     # validar que un atributos unicos
    validates :nombre, uniqueness: { message: "No se puede Repetir" }
    
    def self.search(search, page)
        where(['upper(nombre) like ?', "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
    end
    
end
