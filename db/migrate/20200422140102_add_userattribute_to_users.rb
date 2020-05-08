class AddUserattributeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :phonenumber, :string
    add_column :users, :usergrade, :string
    add_column :users, :admin, :boolean
  end
end
