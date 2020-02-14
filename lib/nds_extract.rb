$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  retVal = 0
  director_data[:movies].length.times do |index|
    retVal += director_data[:movies][index][:worldwide_gross]
  end
  return retVal
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nds.length.times do |index|
    result[nds[index][:name]] = gross_for_director(nds[index])
  end  
  return result
end

