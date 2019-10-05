class CreateEmployeesEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :employees_events do |t|
      t.integer :employee_id
      t.integer :event_id

      t.timestamps
    end
  end
end
