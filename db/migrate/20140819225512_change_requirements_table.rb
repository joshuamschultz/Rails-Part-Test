class ChangeRequirementsTable < ActiveRecord::Migration
  def change
    remove_column :requirements, :dim_type_id
    add_column :requirements, :characteristic_id, :integer
  end
end
