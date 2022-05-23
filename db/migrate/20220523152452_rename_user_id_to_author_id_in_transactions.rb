class RenameUserIdToAuthorIdInTransactions < ActiveRecord::Migration[7.0]
  def change
    rename_column :table_name, :old_column, :new_column
  end
end
