class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.text :name
      t.integer :score
      t.text :quizname

      t.timestamps
    end
  end
end
