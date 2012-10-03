class CreateEmailIds < ActiveRecord::Migration
  def change
    create_table :email_ids do |t|
      t.string :email_id
      t.string :user_name
      t.timestamps
    end
  end
end
