class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.string "notes"
      t.datetime "occured_at"
      t.integer "contract_id"
      t.integer "salesperson_id"

      t.timestamps
    end
  end
end
