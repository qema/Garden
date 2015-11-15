class CreateMeta < ActiveRecord::Migration
  def change
    create_table :meta do |t|
      t.string :username
      t.string :password
      t.string :committee1
      t.string :committee2
      t.string :committee3
      t.string :committee4
      t.string :committee5

      t.timestamps null: false
    end
  end
end
