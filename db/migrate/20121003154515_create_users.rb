class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email                       # mrt
      t.string :user_name                      # mrt
      t.timestamps
    end
  end
end
