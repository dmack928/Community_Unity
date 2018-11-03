class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
