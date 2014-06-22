class CreateTturnIns < ActiveRecord::Migration
  def change
    create_table :tturn_ins do |t|
      t.integer :user_id
      t.integer :exercises_id
      t.string :url
      t.boolean :completed
      t.boolean :priority

      t.timestamps
    end
  end
end
