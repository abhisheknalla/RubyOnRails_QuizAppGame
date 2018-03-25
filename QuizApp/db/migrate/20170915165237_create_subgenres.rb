class CreateSubgenres < ActiveRecord::Migration[5.1]
  def change
    create_table :subgenres do |t|
      t.text :name
      t.text :questions
      t.text :type
      t.timestamps
    end
  end
end
