class AddAttachmentDocumentToLots < ActiveRecord::Migration[5.2]
  def self.up
    change_table :lots do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :lots, :document
  end
end
