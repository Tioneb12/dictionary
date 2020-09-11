class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :pseudo
      t.string :email
      t.string :content
      t.string :secret
      t.boolean :published, default: false
      t.integer :word_id

      t.timestamps
    end
  end
end
