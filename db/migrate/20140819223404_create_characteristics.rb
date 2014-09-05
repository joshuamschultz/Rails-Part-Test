class CreateCharacteristics < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.string :name
      t.string :symbol
      t.boolean :two_sided
      t.boolean :continuous

      t.timestamps
    end
  end
end
