class ChangeDateTimeToString < ActiveRecord::Migration[7.0]
  def change
    change_column :plans, :date, :string
    change_column :plans, :time, :string
  end
end
