class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.integer :plotnumber
      t.string :returning
      t.string :registered
      t.string :email
      t.integer :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :committee1
      t.string :committee2
      t.string :committee3
      t.string :committee4
      t.string :committee5
      t.string :plotpartners
      t.string :contactmethod
      t.string :postpermission
      t.integer :secondplot

      t.timestamps null: false
    end
  end
end
