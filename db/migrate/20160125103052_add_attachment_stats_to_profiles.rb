class AddAttachmentStatsToProfiles < ActiveRecord::Migration
	def self.up
		change_table :profiles do |t|
			t.attachment :GamesAttended
			t.attachment :GamesHosted
			t.attachment :PosReviews
			t.attachment :NegReviews
			t.attachment :badgesEarned
			t.attachment :friends
		end
	end
	def self.down
		remove_attachment :profiles, :GamesAttended, :GamesHosted, :PosReviews, :NegReviews, :badgesEarned, :friends
	end
end
