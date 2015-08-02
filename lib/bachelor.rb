require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  season_info = data[season]
  #binding.pry
  winner = season_info.collect do |contestant| 
    contestant["name"] if contestant["status"] == "Winner"
  end
  winner = winner.compact
  name = winner[0].split(" ")
  name[0]
end

def get_contestant_name(data, occupation)
  # code here
  selected_contestants = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        selected_contestants <<  contestant["name"]
      end
    end
  end
  selected_contestants[0]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  selected_contestants = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        selected_contestants <<  contestant["name"]
      end
    end
  end
  selected_contestants.length
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        occupation <<  contestant["occupation"]
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  num_contestants = 0
  season_info = data[season]
  season_info.each do |contestant|
    age = contestant["age"].to_f
    sum += age
    num_contestants += 1
  end
  average = (sum/num_contestants)
  average_age = average.round
end
