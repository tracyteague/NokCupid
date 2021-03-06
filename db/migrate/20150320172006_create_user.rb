class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :name, null: false
      t.string    :email, null: false
      t.string    :username, null: false
      t.string    :password_digest
      t.references :profile

      t.timestamp null: false
    end
  end
end
