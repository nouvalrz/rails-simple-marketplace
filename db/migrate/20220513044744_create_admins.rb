class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :profile_image
      t.string :phone
      t.string :remember_token

      t.timestamps
    end
  end
end
