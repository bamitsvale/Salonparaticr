class CreateCitas < ActiveRecord::Migration[6.1]
  def change
    create_table :citas do |t|
      t.string :descripcion
      t.datetime :fecha_cita
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :telefono
      t.references :users, index:true, foreign_key:true

      t.timestamps
    end
  end
end
