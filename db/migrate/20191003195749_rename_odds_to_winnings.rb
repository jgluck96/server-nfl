class RenameOddsToWinnings < ActiveRecord::Migration[5.2]
  def change
    add_column :team_odds, :winnings, :float
  end
end
