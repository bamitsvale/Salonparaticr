class CreateCitas < ActiveRecord::Migration[6.1]
  def change
    create_table :citas do |t|
      t.string :descripcion
      t.string :fecha_cita
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :telefono
      t.references :user, index:true, foreign_key:true

      t.timestamps
    end
  end
end
