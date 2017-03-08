require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |lover|
    #binding.pry
    if lover["status"] == "Winner"
      winner = lover["name"].split(" ").first
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  match = ""
  data.each do |season, info|
    info.each do |job|
    if job["occupation"] == occupation
      match = job["name"]
    end
    end
  end
  match
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, info|
    info.each do |contestants|
      if contestants["hometown"] == hometown
        counter += 1
        #binding.pry
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  first = ""
  data.each do |season, info|
    info.find do |contestant|
      if contestant["hometown"] == hometown
        first = contestant["occupation"]
      end
    end
  end
  first
end

def get_average_age_for_season(data, season)
  total_age = 0
  denom = 0
  data[season].each do |lovers|
      total_age += lovers["age"].to_f
        denom += 1
  end
  (total_age / denom).round
end
