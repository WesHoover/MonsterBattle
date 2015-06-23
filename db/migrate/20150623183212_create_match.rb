class CreateMatch < ActiveRecord::Migration
  def change
    create_table :matches do |t|
    	t.integer :monster1, :index => true
    	t.integer :monster2, :index => true
    	t.integer :winner, :index => true
    end
  end
end
