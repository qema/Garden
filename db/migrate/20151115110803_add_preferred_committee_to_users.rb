class AddPreferredCommitteeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :preferred_committee, :string
  end
end
