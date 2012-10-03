class CreateMyblogs < ActiveRecord::Migration
  def change
    create_table :myblogs do |t|
      t.string :blog_entry
      t.integer :user_id
      t.timestamps
    end



  end
end
