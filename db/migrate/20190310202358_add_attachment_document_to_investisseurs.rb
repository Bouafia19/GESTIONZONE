class AddAttachmentDocumentToInvestisseurs < ActiveRecord::Migration[5.2]
  def self.up
    change_table :investisseurs do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :investisseurs, :document
  end
end
