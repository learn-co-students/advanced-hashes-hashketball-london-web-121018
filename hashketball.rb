# Write your code here!

def game_hash 
  game_hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [{
        :name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1 
      }, 
      {
        :name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      }, 
      { 
        :name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      },
      {
        :name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      {
        :name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
      ]
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [{
      :name => "Jeff Adrien",
      :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
    }, {
      :name => "Bismak Biyombo",
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 7,
      :blocks => 15,
      :slam_dunks => 10
    }, {
      :name => "DeSagna Diop",
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5
    }, {
      :name => "Ben Gordon",
      :number => 8,
      :shoe => 15,
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slam_dunks => 0
     }, {
      :name => "Brendan Haywood",
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 22,
      :blocks => 5,
      :slam_dunks => 12
      }]
  }
}
end

def num_points_scored(player_name)
  points_scored = nil 
  game_hash.each do |team, team_data_hash|
    team_data_hash[:players].each do |player_hash|
      if player_hash[:name] == player_name
        points_scored = player_hash[:points]
      end 
    end 
  end
  points_scored
end 

def shoe_size(player_name)
  player_shoe_size = nil 
  game_hash.each do |team, team_data_hash|
    team_data_hash[:players].each do |player_hash|
      if player_hash[:name] == player_name
        player_shoe_size = player_hash[:shoe]
      end 
    end 
  end 
  player_shoe_size
end 

def team_colors(team_name)
  team_colors = nil 
  game_hash.each do |team, team_data_hash|
    if team_data_hash[:team_name] == team_name
      team_colors = team_data_hash[:colors]
    end 
  end 
team_colors
end 

def team_names
  team_names = []
  game_hash.each do |team, team_data_hash|
    team_names << team_data_hash[:team_name]
  end 
  team_names
end 

def player_numbers(team_name)
  team_numbers = []
  game_hash.each do |team, team_data_hash|
    if team_data_hash[:team_name] == team_name
    team_data_hash[:players].each do |player_hash|
      team_numbers << player_hash[:number]
    end 
  end 
end 
team_numbers
end 

def player_stats(player_name)
  player_stats = nil
  game_hash.each do |team, team_data_hash|
    team_data_hash[:players].each do |player_hash|
      if player_hash[:name] == player_name
         player_hash.delete(:name)
         player_stats = player_hash
       end 
     end 
   end 
   player_stats
end 

def big_shoe_rebounds
  biggest_shoe_size = 0 
  rebounds_biggest_shoe = 0 
  game_hash.each do |team, team_data_hash|
    team_data_hash[:players].each do |player_hash|
      if player_hash[:shoe] > biggest_shoe_size
        biggest_shoe_size = player_hash[:shoe]
        rebounds_biggest_shoe = player_hash[:rebounds]
      end 
    end
  end 
  rebounds_biggest_shoe
end 



