class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :priority
      t.datetime :deadline
      t.boolean :done
      t.belongs_to :projects, index: true
      t.timestamps
    end
  end
end
