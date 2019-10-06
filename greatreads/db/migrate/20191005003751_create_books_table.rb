class CreateBooksTable < ActiveRecord::Migration

  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.boolean :read, :default => false
      t.integer :user_id
    end 
  end

end
