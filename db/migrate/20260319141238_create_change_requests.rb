class CreateChangeRequests < ActiveRecord::Migration[8.1]
  def change
    create_table :change_requests do |t|
      t.string :requester_name, null: false
      t.string :requester_email, null: false
      t.string :summary, null: false
      t.text :details, null: false
      t.text :benefit
      t.text :acceptance_criteria
      t.string :priority, null: false, default: "medium"
      t.string :status, null: false, default: "new"
      t.string :target_release

      t.timestamps
    end
  end
end
