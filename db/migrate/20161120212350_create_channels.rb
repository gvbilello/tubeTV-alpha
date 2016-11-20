class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
    	t.string :channel_key, null: false
    	t.references :user

      t.timestamps
    end
  end
end
