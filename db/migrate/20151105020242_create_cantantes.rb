class CreateCantantes < ActiveRecord::Migration
  def change
    create_table :cantantes do |t|
      t.string :nombre
      t.string :genero
      t.string :pais

      t.timestamps null: false
    end
  end
end
