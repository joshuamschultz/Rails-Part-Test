class ChangeRequirementsColumns < ActiveRecord::Migration
  def change
    remove_column :requirements, :dim
    remove_column :requirements, :tolerance_plus
    remove_column :requirements, :tolerance_less
    add_column :requirements, :dim, :float
    add_column :requirements, :tolerance_plus, :float
    add_column :requirements, :tolerance_less, :float
  end
end
