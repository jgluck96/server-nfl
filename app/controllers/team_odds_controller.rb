class TeamOddsController < ApplicationController

  def index
    team_odds = TeamOdd.all
    render json: team_odds
  end

  def create
    team_odd = TeamOdd.create(team_odds_params)
  end

  private

  def team_odds_params
    params.require(:team_odd).permit(:name, :week, :user_id, :odds, :winnings)
  end
end
