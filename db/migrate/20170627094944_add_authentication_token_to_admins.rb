class AddAuthenticationTokenToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :authentication_token, :string
    add_index :admins, :authentication_token
  end
end
