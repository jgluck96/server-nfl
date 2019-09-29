class CreateWeekPickems < ActiveRecord::Migration[5.2]
  def change
    create_table :week_pickems do |t|
      t.integer :week
      t.string :teams
      t.integer :user_id

      t.timestamps
    end
  end
end
