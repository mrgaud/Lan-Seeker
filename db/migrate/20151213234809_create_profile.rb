class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.integer :user_id
    	t.string :user_name
    	t.string :first_name
    	t.string :last_name
    	t.string :facebook_page
    	t.text :description

    	t.timestamps
    end
  end
end
