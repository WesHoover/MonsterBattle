class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :monsters, :users do |t|
      t.index [:monster_id, :user_id]
      t.index [:user_id, :monster_id]
    end
  end
end
