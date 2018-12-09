require 'pry'

def game_hash
  data_hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1,
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7,
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15,
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5,
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1,
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2,
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10,
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5,
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0,
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12,
        }
      }
    }
  }
end

def num_points_scored(player_n)
  points_v = 0

  game_hash.each_value do |team|
    team[:players].each do |name, att|
      if name.to_s == player_n
        points_v = att[:points]
      end
      #binding.pry
    end
    #binding.pry
  end
  points_v
end

def shoe_size(player_n)
  shoe_v = 0

  game_hash.each_value do |team|
    team[:players].each do |name, att|
      if name.to_s == player_n
        shoe_v = att[:shoe]
      end
      #binding.pry
    end
    #binding.pry
  end
  shoe_v
end

def team_colors(team_n)
  colours = []

    game_hash.each_value do |value|
      if value[:team_name] == team_n
        colours = value[:colors]
      end
    end
    colours
end

def team_names
  names = []

  game_hash.each_key do |team|
    names.push(game_hash[team][:team_name])
  end
  names
end

def player_numbers(team)
  players_n = []

  game_hash.each_key do |key|
    if game_hash[key][:team_name] == team
      #binding.pry
        game_hash[key][:players].each_key do |value|
          #binding.pry
          players_n.push(game_hash[key][:players][value][:number])
        end
      end
  end
  players_n
end

def player_pool
  player_p = game_hash[:home][:players].merge(game_hash[:away][:players])
end

def player_stats(player)
  stats = {}

  player_pool.each_key do |name|
    if player == name
      stats = player_pool[name]
    end
  end
  stats
end

def big_shoe_rebounds
  rebounds = 0
  shoe = 0
  player_pool.each_key do |player|
    if player_pool[player][:shoe] > shoe
      shoe = player_pool[player][:shoe]
    else
      rebounds = player_pool[player][:rebounds]
    end
    #binding.pry
  end

  rebounds
end
