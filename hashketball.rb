require 'pry'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end
# Write code here

def any_all_players
  all_players = []
  game_hash.each do |location, team_info_hash|
    all_players += team_info_hash[:players]
  end 
  all_players
end 
any_all_players


def player_stats(player)
 any_all_players.find do |player_hash|
    player_hash[:player_name] == player 
  end
end 

def num_points_scored(player)
  found_player_hash = player_stats(player)
  found_player_hash[:points]
end 

def shoe_size(player)
  ss = player_stats(player)
  ss[:shoe]
end 

def team_based_on_name(team_name_string)
  game_hash.find do |location, team_info_hash|
    team_info_hash[:team_name] == team_name_string
  end 
end 

def team_colors(team)
color = team_based_on_name(team)
color[1][:colors]
end 

def player_numbers(team_name_string)
  nums = team_based_on_name(team_name_string)
  players_on_team = nums[1][:players]
  players_on_team.map do |player_hash|
    player_hash[:number]
  end 
end 

def team_names 
  game_hash.map do |home_or_away, team_info_hash|
    team_info_hash[:team_name]
  end 
end 

def big_shoe_rebounds
  biggest = any_all_players.max_by do |player_hash|
    player_hash[:shoe]
  end 
  biggest[:rebounds]
end 

def most_points_scored
  most = any_all_players.max_by do |player_hash|
    player_hash[:points]
  end 
  most[:points]
end 
























