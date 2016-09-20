class ChangeDataTypeForFieldname < ActiveRecord::Migration[5.0]
  def change
    change_column(:books, :title, :string)
    change_column(:books, :author, :string)
    change_column(:books, :isbn, :string)
  end
end
