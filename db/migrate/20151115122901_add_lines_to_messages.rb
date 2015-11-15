class AddLinesToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :sender, :string
    add_column :messages, :recipient, :string
    add_column :messages, :plotnumber, :integer
  end
end
