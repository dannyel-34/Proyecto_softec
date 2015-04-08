class DatoEstudiante < ActiveRecord::Base
  belongs_to :pais
  belongs_to :municipio
  belongs_to :departamento
  
  
  # Validar que los atributos sean obligatorios
  validates :codigo, :presence => true
  validates :nombre, :presence => true
  validates :apellido, :presence => true
  validates :mail, :presence => true
  validates :doc_identidad, :presence => true
  validates :curso, :presence => true
  validates :grado, :presence => true
  validates :pais, :presence => true
  validates :municipio, :presence => true
  validates :departamento, :presence => true
  validates :telefono, :presence => true
  validates :celular, :presence => true
  validates :direccion, :presence => true
  validates :fch_nacimiento, :presence => true
  validates :tipo_doc, :presence => true
  
  
  # validar un atributo booleano
  validates :genero, inclusion: [true, false]
  
  # validar que un atributos unicos
  validates :codigo, uniqueness: { message: "No se puede Repetir" }
  validates :nombre, uniqueness: { message: "No se puede Repetir" }
  
  # validar formato de un email
  validates :mail, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
  message: 'Formato no valido' }
  
  # valida la longitud de un campo, tanto la longitud minima como la maxima
  validates :doc_identidad, length: { minimum: 5, maximum: 30 }
  validates :nombre, length: { minimum: 5, maximum: 50 }
  
  # Valida si un atributo es numerico
  validates :codigo, numericality: true
  validates :telefono, :presence => true
  
  
  
  def self.search(search, page)
      where(['upper(codigo) like ?', "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("codigo")
  end
  
  

end
