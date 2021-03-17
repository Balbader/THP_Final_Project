class CreateTriviaUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :trivia_users do |t|
      t.integer :user_id
      t.integer :trivium_id

      t.timestamps
    end
  end
end
