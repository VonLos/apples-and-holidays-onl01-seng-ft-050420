require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   #given that holiday_hash looks like this:
   {
    :winter => {
      :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
  # return the second element in the 4th of July array
return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash.each do |season, holidays|
  if season == :winter
  holidays.each do |holiday, supplies|
    supplies << supply
  end
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays|
    if season == :spring
    holidays.each do |holiday, supplies|
      supplies << supply 
    end
  end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  season
holiday_hash[season]= {holiday_name => supply_array}
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  
  # return an array of all of the supplies that are used in the winter season
holiday_hash.each do |season, holidays|
  if season == :winter
 supply_array = holidays.values.flatten
  return supply_array
  end
end
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.map do |season, holidays|
    puts  "#{season.to_s.capitalize}:"
    holidays.map do |holi,supply|
     puts "  #{holi.to_s.split("_").each { |word| word.capitalize!}.join(" ")}: #{supply.join(", ")}"
  
    end
 end
  end
  
all_supplies_in_holidays(   {
  :winter => {
    :christmas => ["Lights", "Wreath"],
     :new_years => ["Party Hats"]
   },
   :summer => {
     :fourth_of_july => ["Fireworks", "BBQ"]
   },
   :fall => {
     :thanksgiving => ["Turkey"]
   },
   :spring => {
     :memorial_day => ["BBQ"]
   }
 })


def all_holidays_with_bbq(holiday_hash)
 bbq_array = []
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_hash.each do |season, holiday|
holiday.map do |day, supply|
  if supply.include?("BBQ") 
    bbq_array << day
    bbq_array
end
end
end
bbq_array
end






