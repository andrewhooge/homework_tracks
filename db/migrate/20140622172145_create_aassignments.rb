class CreateAassignments < ActiveRecord::Migration
  def change
    create_table :aassignments do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.datetime :due

      t.timestamps
    end
  end
end
