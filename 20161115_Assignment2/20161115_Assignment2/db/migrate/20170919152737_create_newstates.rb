class CreateNewstates < ActiveRecord::Migration[5.1]
  def change
    create_table :newstates do |t|
      t.text :quizname
      t.integer :questionid
      t.integer :score
      t.integer :userid

      t.timestamps
    end
  end
end
