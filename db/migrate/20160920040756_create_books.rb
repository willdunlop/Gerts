class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.text :title
      t.text :author
      t.date :publication
      t.text :isbn
      t.text :summary
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
