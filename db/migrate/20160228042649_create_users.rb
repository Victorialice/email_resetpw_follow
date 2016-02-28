class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :reset_code
      t.string :auth_code
      t.string :status

      t.timestamps null: false
    end
  end
end
