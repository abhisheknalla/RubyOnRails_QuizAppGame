class AddTypeToSubgenres < ActiveRecord::Migration[5.1]
  def change
    add_column :subgenres, :type, :text
  end
end
