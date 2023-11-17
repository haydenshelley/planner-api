class AddCompletedToPlan < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :completed, :boolean
    change_column :plans, :date, :date, using: 'date::date'
    change_column :plans, :time, 'time with time zone', using: 'time::time with time zone'
  end
end
