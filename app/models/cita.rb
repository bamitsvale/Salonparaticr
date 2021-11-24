class Cita < ApplicationRecord
  self.table_name = 'citas'

  belongs_to :user

  validates :nombre, :telefono, :apellido, :fecha_cita, presence: true
  validates :fecha_cita, uniqueness: true
end
