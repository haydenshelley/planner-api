class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.integer :user_id
      t.string :title
      t.date :date
      t.time :time
      t.string :info

      t.timestamps
    end
  end
end
