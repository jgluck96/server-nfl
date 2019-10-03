class AddWeekToTeamodds < ActiveRecord::Migration[5.2]
  def change
    add_column :team_odds, :week, :integer
  end
end
