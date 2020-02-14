$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  retVal = 0
  # director_data[:movies].length.times do |index|
  #   retVal += director_data[:movies][index][:worldwide_gross]
  # end
  index = 0
  while index < director_data[:movies].length do
    retVal += director_data[:movies][index][:worldwide_gross]
    index += 1
  return retVal
  end
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  # result = {}
  # nds.length.times do |index|
  #   result[nds[index][:name]] = gross_for_director(nds[index])
  # end  
  # return result
  
  # result = {}
  # index = 0
  # while index < nds.size do
  #   name = nds[index]
  #   result[name[:name]] = gross_for_director(name)
  #   index += 1
  # end
  
  
    retHash = {}
  nds.length.times do |index_i|
    name = nds[index_i][:name]
    retHash[name] = 0
    nds[index_i][:movies].length.times do |index_j|
        retHash[name]+=nds[index_i][:movies][index_j][:worldwide_gross]
    end 
  end  
  return retHash
end

