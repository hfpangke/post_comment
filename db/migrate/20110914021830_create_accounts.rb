class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :username,:null => false
      t.string :password,:null => false
      t.string :pelname,:null => false

      t.timestamps
    end
  end
end
