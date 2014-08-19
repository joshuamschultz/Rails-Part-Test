class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :bubble
      t.integer :dim
      t.integer :tolerance_less
      t.string :tolerance_plus
      t.integer :dim_type
      t.integer :part_id

      t.timestamps
    end
  end
end
