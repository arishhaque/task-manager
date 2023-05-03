class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false, index: true
      t.text :description
      t.integer :status, default: 0, index: true
      t.timestamps
    end
  end
end
