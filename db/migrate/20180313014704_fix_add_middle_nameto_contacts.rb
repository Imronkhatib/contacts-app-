class FixAddMiddleNametoContacts < ActiveRecord::Migration[5.1]
  def change
    rename_column :contacts, :name, :middle_name
  end
end
