class MigrationName < ActiveRecord::Migration[5.1]
  def change
  add_foreign_key :subgenres, :quiz

  end
end
