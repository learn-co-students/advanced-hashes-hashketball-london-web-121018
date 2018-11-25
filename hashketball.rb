# Write your code here!
require "pry"
def game_hash 
  {
    home:{
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players => {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    } ,
    away:{
      :team_name =>"Charlotte Hornets" ,
      :colors => ["Turquoise","Purple"],
      :players => {
         "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12

        }
      }
    }
  }
end 

def num_points_scored (player_name)
  points = 0
  if game_hash[:home][:players].has_key?(player_name)
    points = game_hash[:home][:players][player_name][:points]
  
  elsif game_hash[:away][:players].has_key?(player_name)
    points = game_hash[:away][:players][player_name][:points]
  end 
  points
end 

def shoe_size (player_name)
  shoe_size1 = 0
  if game_hash[:home][:players].has_key?(player_name)
    shoe_size1 = game_hash[:home][:players][player_name][:shoe]
  
  elsif game_hash[:away][:players].has_key?(player_name)
    shoe_size1 = game_hash[:away][:players][player_name][:shoe]
  end 
  shoe_size1
end 

def team_colors (team)
  color = [];
  if game_hash[:home][:team_name] == team 
    color = game_hash[:home][:colors]
  elsif game_hash[:away][:team_name] == team 
    color = game_hash[:away][:colors]
  end
  color
end 

def team_names 
  newA = [];
  game_hash.values.each do |data| 
    newA << data[:team_name] 
  end
  newA
end

def player_numbers (team) 
    newA = [];
    if game_hash[:home][:team_name] == team 
      
      game_hash[:home][:players].each do |key,value|
        newA << value[:number]
      end 
      
      elsif game_hash[:away][:team_name] == team 
       game_hash[:away][:players].each do |key,value|
        newA << value[:number]
        end 
    end
    newA
end 

def player_stats (name)
    stats = {}
    if game_hash[:home][:players].has_key?(name)
      stats = game_hash[:home][:players][name]
  
  elsif game_hash[:away][:players].has_key?(name)
    stats = game_hash[:away][:players][name]
  end
end 
      
# def big_shoe_rebounds
#   newA = []; 
#   newB = [];
#   name = "";
#   game_hash.values.each do |object|
#     object.values.each do |info|
      
#       if info.class == Hash 
        
#         newB = info.keys 
#         info.values.each do |element|
#           newA << element[:shoe] 
          
#         end
         
#         binding.pry 
       
#       end
       
#     end 
    
#   end 
#   name = newB[newA.index(newA.max)]
#   if game_hash[:home][:players].has_key?(name)
#     game_hash[:home][:players][name][:rebounds]
#   elsif game_hash[:away][:players].has_key?(name)
#     game_hash[:away][:players][name][:rebounds]
#   end 
  
# end 

def big_shoe_rebounds
  all_players = game_hash[:home][:players].merge(game_hash[:home][:players])
  big_object = all_players.max_by do |key,value|
    value[:shoe]
  end 
  big_object[1][:rebounds]
end 





