class CreateUnallocatedLinks < ActiveRecord::Migration
  def change
    create_table :unallocated_links do |t|
      t.integer :link_id
      t.integer :to_user_id
      t.integer :from_user_id

      t.timestamps
    end
  end
end
