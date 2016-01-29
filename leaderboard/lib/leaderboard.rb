require "spec_helper"
require_relative 'team'

class Leaderboard
  attr_reader :team_stats

  GAME_INFO = [
      {
        home_team: "Patriots",
        away_team: "Broncos",
        home_score: 17,
        away_score: 13
      },
      {
        home_team: "Broncos",
        away_team: "Colts",
        home_score: 24,
        away_score: 7
      },
      {
        home_team: "Patriots",
        away_team: "Colts",
        home_score: 21,
        away_score: 17
      },
      {
        home_team: "Broncos",
        away_team: "Steelers",
        home_score: 11,
        away_score: 27
      },
      {
        home_team: "Steelers",
        away_team: "Patriots",
        home_score: 24,
        away_score: 31
      }
  ]

  def initialize()
    @team_stats = {}
  end

  def creates_team
    GAME_INFO.each do |game|
      if @team_stats.has_key?(game[:home_team]) == false
        @team_stats.store(game[:home_team],Team.new(game[:home_team]))
      elsif team_stats.has_key?(game[:away_team]) == false
        @team_stats.store(game[:away_team],Team.new(game[:away_team]))
      end
    end
    @team_stats
  end

  def set_wins_and_losses
    GAME_INFO.each do |game|
      if game[:home_score] > game[:away_score]
        @team_stats[game[:home_team]].wins += 1
        @team_stats[game[:away_team]].losses += 1
      else
        @team_stats[game[:away_team]].wins += 1
        @team_stats[game[:home_team]].losses += 1
      end
    end
  end

  def sort_rank
    sorted_stats = @team_stats.values.sort_by { |team| team.wins }
    @team_stats.clear
    sorted_stats.reverse.each_with_index do |team, index|
      team.rank = index + 1
      @team_stats.store(team.name,team)
    end
  end

  def display_leaderboard
    print "-" * 55 + "\n"
    printf "%10s\t%s\t%s\t%10s\n", "Name", "Rank", "Total Wins", "Total Losses"
    @team_stats.values.each do |team|
      printf "%10s\t%s\t%s\t%10s\n", team.name, team.rank, team.wins, team.losses
    end
    print "-" * 55 + "\n"
  end

  def team_game_summary(team)
    result = "#{team.name} played #{team.wins + team.losses} games.\n"

    GAME_INFO.each do |game|
      if game[:home_team] == team.name
        result += "They played as the home team against the #{game[:away_team]} and "
          game[:home_score] > game[:away_score] ? result += "won" : result += "loss"
          result += " #{game[:home_score]} to #{game[:away_score]}.\n"
      elsif game[:away_team] == team.name
        result += "They played as the away team against the #{game[:home_team]} and "
          game[:home_score] > game[:away_score] ? result += "loss" : result += "won"
          result += " #{game[:away_score]} to #{game[:home_score]}.\n"
      end
    end
    puts result
  end
end

l = Leaderboard.new()
l.creates_team
l.set_wins_and_losses
l.sort_rank
l.display_leaderboard
l.team_game_summary(l.team_stats["Patriots"])
