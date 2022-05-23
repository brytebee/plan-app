class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :category, :old_column, :new_column
    rename_column :transactions, :old_column, :new_column
  end
end
