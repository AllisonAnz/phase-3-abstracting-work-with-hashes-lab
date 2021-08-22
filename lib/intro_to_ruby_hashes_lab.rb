def my_hash_creator(key, value)
  # return a hash that includes the key and value parameters passed into this method
  {key => value}
end
puts my_hash_creator(:name , 'Steve')
#=> {:name =>"Steve"}

puts my_hash_creator(1, 2)
#=> {1=>2}

def read_from_hash(hash, key)
  # return the correct value using the hash and key parameters
  hash[key]
end

hash_for_reading = {location: 'New York City', occupation: 'Student'}
puts read_from_hash(hash_for_reading, :location)
#=> New York City


def update_counting_hash(hash, key)
  # given a hash an a key as parameters, return an updated hash
  # if the provided key is not present in the hash, add it and assign it to the value of 1
  # if the provided key is present, increment its value by 1
  hash[key] ? hash[key] += 1 : hash[key] = 1
  hash
end

# 
# def update_counting_hash(hash, key)
#   if hash[key]
#     hash[key] += 1
#   else
#     hash[key] = 1
#   end
#     hash
# end
puts update_counting_hash({'number' => 1, 'amount' => 50},'number')
#= > {"number"=>2, "amount"=>50}

puts update_counting_hash({},'hello')
# => {"hello"=>1}

puts update_counting_hash({count: 5}, :count)
#=> {:count=>6}