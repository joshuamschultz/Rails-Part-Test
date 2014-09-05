class AddAttachmentPrintToParts < ActiveRecord::Migration
  def self.up
    change_table :parts do |t|
      t.attachment :print
    end
  end

  def self.down
    remove_attachment :parts, :print
  end
end
