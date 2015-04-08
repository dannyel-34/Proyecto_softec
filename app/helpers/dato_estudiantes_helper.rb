module DatoEstudiantesHelper
    
  def mostrar_genero(genero)
      if genero
          "Masculino"
      else
          "Femenino"
      end
  end
  
  def calcular_edad(fch_nacimiento)
      now = Date.today
      year = now.year - fch.year
  end
  
end
