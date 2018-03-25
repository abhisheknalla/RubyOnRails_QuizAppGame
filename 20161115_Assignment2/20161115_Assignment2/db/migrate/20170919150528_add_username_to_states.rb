class AddUsernameToStates < ActiveRecord::Migration[5.1]
  def change
    add_column :states, :username, :text
 
    State.reset_column_information
    end
end
