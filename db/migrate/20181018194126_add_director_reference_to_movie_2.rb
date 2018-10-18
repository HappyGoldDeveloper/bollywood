class AddDirectorReferenceToMovie2 < ActiveRecord::Migration[5.2]
  def change
    add_reference :movies , :director ,foreign_key: true
    #add_foreign_key :movies, :directors
  end
end
