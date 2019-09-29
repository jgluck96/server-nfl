class ChangeTName < ActiveRecord::Migration[5.2]
  def change
    rename_table :week_pickems, :pickems
  end
end
