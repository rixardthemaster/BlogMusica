class CreateCancions < ActiveRecord::Migration
  def change
    create_table :cancions do |t|
      t.string :titulo
      t.text :letra
      t.string :genero
      t.references :cantante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
