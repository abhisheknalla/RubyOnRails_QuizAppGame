class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
      t.text :question
      t.text :option1
      t.text :option2
      t.text :option3
      t.text :option4
      t.text :correct_ans
      t.text :subgenre_name

      t.timestamps
    end
  end
end
