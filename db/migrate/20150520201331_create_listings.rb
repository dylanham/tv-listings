class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :show_id
      t.integer :channel_id
      t.string :date

      t.timestamps null: false
    end
  end
end
