class CreateBooksUsersJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :books_users do |t|
      t.integer :book_id, index: true
      t.integer :user_id, index: true
    end
  end
end
