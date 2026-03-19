class CreateBugs < ActiveRecord::Migration[8.1]
  def change
    create_table :bugs do |t|
      t.string :reporter_name, null: false
      t.string :reporter_email, null: false
      t.string :summary, null: false
      t.text :details, null: false
      t.text :steps_to_reproduce
      t.text :expected_behavior
      t.text :actual_behavior
      t.string :severity, null: false, default: "medium"
      t.string :status, null: false, default: "new"
      t.string :environment

      t.timestamps
    end
  end
end
