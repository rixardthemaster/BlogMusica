class CreateCantanteCancions < ActiveRecord::Migration
  def change
    create_table :cantante_cancions do |t|
      t.references :cantante, index: true, foreign_key: true
      t.references :cancion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
