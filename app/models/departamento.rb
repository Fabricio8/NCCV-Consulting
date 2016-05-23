class Departamento < ActiveRecord::Base
    has_many :distritos
    validates :codigo_departamento, presence: true, uniqueness: {case_sensitive: false}
    def name
     self.nombre_departamento
	end
end
