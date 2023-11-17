class ChangeTimeFromSTring < ActiveRecord::Migration[7.0]
  def change
    change_column :plans, :time, :time
  end
end
