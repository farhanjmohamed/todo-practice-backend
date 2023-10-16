class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :name
      t.text :note
      t.string :status
      t.datetime :date

      t.timestamps
    end
  end
end
