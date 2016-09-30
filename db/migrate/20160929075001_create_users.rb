class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, default: "", null: false
      t.string :password, default: ""  , null: false
      t.string :role, default: ""

      t.timestamps null: false
    end
  end
end
