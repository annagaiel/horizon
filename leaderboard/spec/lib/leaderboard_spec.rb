require 'spec_helper'

RSpec.describe Leaderboard do
  describe ".new" do
    leaderboard = Leaderboard.new
    it 'creates team objects by iterating through GAME_INFO' do
      expect(leaderboard.creates_team).to be_a(Hash)
      expect(leaderboard.creates_team["Patriots"]).to be_a(Team)
    end
    it 'set wins and losses' do
      leaderboard.set_wins_and_losses
      team_patriots = leaderboard.team_stats["Patriots"]
      expect(team_patriots.wins).to eq(3)
      expect(team_patriots.losses).to eq(0)
    end
    it 'sorts by rank' do
      leaderboard.sort_rank
      team_patriots = leaderboard.team_stats["Patriots"]
      team_colts = leaderboard.team_stats["Colts"]
      expect(team_patriots.rank).to eq(1)
      expect(team_colts.rank).to eq(4)
    end
    it 'shows team game summary' do
      leaderboard.creates_team
      team = leaderboard.team_stats["Patriots"]
      # expect {leaderboard.team_game_summary(team) }
      # .to output(/Patriots played 3 games./).to_stdout
    end
  end
end
