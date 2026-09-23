class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      # present & length limit:
      t.string :password, null: false, limit: 16

      t.timestamps
    end

    # Enforces database-level uniqueness
    add_index :users, :username, unique: true
  end
end
