class AddPrintToPart < ActiveRecord::Migration
  def change
    add_column :parts, :print, :string
  end
end
