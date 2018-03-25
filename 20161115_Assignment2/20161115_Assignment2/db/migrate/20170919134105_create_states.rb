class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.text :quizname
      t.integer :questionid
      t.integer :marks

      t.timestamps
    end
  end
end
