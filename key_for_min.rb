# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

require 'pry'

def key_for_min_value(name_hash)
  return nil if name_hash.size == 0
  min_key_so_far = 0
  need_to_initialize = 1
  name_hash.each do |key, value|
    if need_to_initialize == 1
        min_key_so_far = key
        need_to_initialize = 0
    elsif value < name_hash[min_key_so_far]
        min_key_so_far = key
    end
  end
  min_key_so_far
end