 class AddAttachmentStatsToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :stats
    end
  end

  def self.down
    remove_attachment :profiles, :stats
  end
end
