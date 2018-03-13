class AddMiddleNametoContacts < ActiveRecord::Migration[5.1]
  def change
    #that was silly
    add_column :contacts, :name, :string
  end
end
