class CreateTeamOdds < ActiveRecord::Migration[5.2]
  def change
    create_table :team_odds do |t|
      t.string :name
      t.integer :odds
      t.integer :user_id

      t.timestamps
    end
  end
end
