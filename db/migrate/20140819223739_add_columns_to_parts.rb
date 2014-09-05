class AddColumnsToParts < ActiveRecord::Migration
  def change
    add_column :parts, :partnumber, :string
    add_column :parts, :revision, :string
    add_column :parts, :customer, :string
  end
end
