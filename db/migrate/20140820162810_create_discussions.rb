class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.text :body
      t.references :discussable, polymorphic: true

      t.timestamps
    end
  end
end
