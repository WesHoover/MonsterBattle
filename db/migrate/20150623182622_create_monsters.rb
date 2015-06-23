class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
    	t.string :name 
    	t.integer :attack
    	t.integer :defense
    	t.string :race
    end
  end
end
