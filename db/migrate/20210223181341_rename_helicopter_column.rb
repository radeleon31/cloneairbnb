class RenameHelicopterColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :helicopters, :type, :category
  end
end
