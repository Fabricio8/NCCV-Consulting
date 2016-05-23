class Distrito < ActiveRecord::Base
  belongs_to :departamento
   validates :cod_distrito, presence: true
 
  #Código Ivargas 22/05/2016 enlazando clave foranea departamento
  def departamento_name
  	self.departamento.nombre_departamento
  end
end
