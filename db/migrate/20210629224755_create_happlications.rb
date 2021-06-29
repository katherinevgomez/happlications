class CreateHapplications < ActiveRecord::Migration[6.1]
  def change
    create_table :happlications do |t|
      t.string :role
      t.string :company
      t.string :interview
      t.string :date

      t.timestamps
    end
  end
end
