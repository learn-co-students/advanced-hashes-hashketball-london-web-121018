require 'pry'

def game_hash
game_hash = {
  home: {
    team_name: "Brooklyn Nets",
    colors:  ["Black", "White"],
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
      },
    },
  },
  away: {
    team_name: "Charlotte Hornets",
    colors:  ["Turquoise", "Purple"],
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
      },
    },
  }
}
game_hash
end

def allplayers
    game_hash[:home][:players].merge(game_hash[:away][:players])
end

def findplayer(player)
  allplayers.each do |key, value|
    if key == player
      key
    end
  end
end

def num_points_scored (player)
  points_scored = 0
  allplayers.each do |key, value|
    if key == player
      points_scored = allplayers[key][:points]
    end
  end
  points_scored
end

def shoe_size (player)
  shoesize = 0
  allplayers.each do |key, value|
    if key == player
      shoesize = allplayers[key][:shoe]
    end
  end
  shoesize
  end

def teamdetails
  teamdetails = {game_hash[:home][:team_name] => game_hash[:home][:colors], game_hash[:away][:team_name] => game_hash[:away][:colors]}
  teamdetails
end

def team_colors (team)
    colors = []
    teamdetails.each do |key, value|
      if key == team
        colors = value
      end
    end
  colors
end

def team_names
  teamnames = []
  teamnames = ["#{game_hash[:home][:team_name]}", "#{game_hash[:away][:team_name]}"]
end

def player_numbers (team)
  teamplayers = {}
  teamnumbers = []
  if game_hash[:home][:team_name] == team
    teamplayers = game_hash[:home][:players]
  else
    teamplayers = game_hash[:away][:players]
  end
  teamplayers.each do |key, value|
    teamnumbers << teamplayers[key][:number]
  end
  teamnumbers
end

def player_stats (player)
  stats = {}
  allplayers.each do |key, value|
   if key == player
     stats = value
   end
  end
  stats
end

def big_shoe_rebounds
  shoesizes = {}
  biggestplayer = ""
  rebounds = 0
  allplayers.each do |key, value|
    shoesizes[key] = player_stats(key)[:shoe]
  end
  biggestplayer = shoesizes.key(shoesizes.values.max)
  allplayers.each do |key,value|
    if key == biggestplayer
      rebounds = allplayers[key][:rebounds]
    end
  end
  rebounds
end
