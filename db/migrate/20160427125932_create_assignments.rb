class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :grade
      t.string :subject
      t.string :name

      t.timestamps null: false
    end
  end
end
