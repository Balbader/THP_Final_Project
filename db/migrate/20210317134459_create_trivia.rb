class CreateTrivia < ActiveRecord::Migration[6.1]
  def change
    create_table :trivia do |t|
      t.string :question
      t.integer :category_id

      t.timestamps
    end
  end
end
