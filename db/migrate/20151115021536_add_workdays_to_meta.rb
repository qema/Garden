class AddWorkdaysToMeta < ActiveRecord::Migration
  def change
    add_column :meta, :workday1, :string
    add_column :meta, :workday2, :string
    add_column :meta, :workday3, :string
    add_column :meta, :workday4, :string
    add_column :meta, :workday5, :string
    add_column :meta, :workday6, :string
    add_column :meta, :workday7, :string
  end
end
