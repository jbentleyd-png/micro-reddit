class CreateComments < ActiveRecord::Migration[8.1]
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.integer :parent_id # doesn't need to be unique or required, usually nil
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
