class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :title
      t.string :excerpt
      t.string :content
      t.string :author_name
      t.string :author_email
      t.boolean :actived

      t.timestamps
    end
  end
end
