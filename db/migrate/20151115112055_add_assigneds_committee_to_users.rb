class AddAssignedsCommitteeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :assigned_committee, :string
  end
end
