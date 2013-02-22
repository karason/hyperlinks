class CreateAllocatedLinks < ActiveRecord::Migration
  def change
    create_table :allocated_links do |t|
      t.integer :link_id
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
