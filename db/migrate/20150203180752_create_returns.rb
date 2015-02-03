class CreateReturns < ActiveRecord::Migration
  def change
    create_table :returns do |t|
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
