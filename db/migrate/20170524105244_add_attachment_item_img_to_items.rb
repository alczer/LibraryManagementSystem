class AddAttachmentItemImgToItems < ActiveRecord::Migration
  def self.up
    change_table :item do |t|
      t.attachment :item_img
    end
  end

  def self.down
    remove_attachment :item, :item_img
  end
end
