class AddUserToTune < ActiveRecord::Migration[5.0]
  def change
    add_reference :tunes, :user, foreign_key: true
  end
end
