class AddHoursInUsers < ActiveRecord::Migration
  def change
    add_column :users, :hours_required, :integer
  end
end
