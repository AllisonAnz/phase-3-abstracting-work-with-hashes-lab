# Working With Hashes Lab 
# Link https://learning.flatironschool.com/courses/2661/assignments/99319?module_item_id=202337

# Build simple hashes
# Access and modify data stored in a hash
# Add new data to a hash

# Practice reading and updating them 
# incorporate methods to add a bit of abstraction 

my_favorite_stream = { name: 'lofi hip hop radio', location: 'youtube' }
#=>  => {:name=>"lofi hip hop radio", :location=>"youtube"}

my_favorite_stream[:name]
#=> => "lofi hip hop radio"
my_favorite_stream[:name] = "lofi hip hop radio - beats to relax/study to"
#=> "lofi hip hop radio - beats to relax/study to" 

# 1. Create a method called my_hash_creator 
# takes in two params. 
# create and return a hash with one key/value pair
# using the first param as the key 
# and the second param as the valu e
my_hash_creator(:name, "George")
#    => {:name=>"George"}

my_hash_creator(:id, 5)
#    => {:id=>5}

my_hash_creator("age", 39)
#    => {"age"=>39} 

# 2. Create a method called read_from_hash that takes in two params 
# The first para is a hash, the second is a key 
# Using together, they will either produce a value on that hash 
# horresponding to the key, or nil by default 
# Use these two params in conjunction, return the result 
hash_to_read = {location: 'New York City', occupation: 'Student'}
#    => {:location=>"New York City", :occupation=>"Cashier"}

read_from_hash(hash_to_read, :location)
#    => "New York City"

read_from_hash(hash_to_read, :occupation)
#    => "Student" 

# Create a method called updating_counting_hash that takes in two params 
# the first param is a hash, the second is a key 
# This time instead of reading the value, you will need to change it 
# The hash provided will have any number of keys, but all values will be integres 
# this method should do one of two things 
# increment an existing value based on the provided key param, 
# or create a new key/value pair using the provided key, setting the value to 1 
hash_to_change = { apples: 3 }
#    => {:apples=>3} 
#...and a provided key :apples, update_counting_hash should return an updated hash
update_counting_hash(hash_to_change, :apples)
#    => {:apples=>4} 

# However, if the hash was given a key that doesn't exist, like :oranges 
# it should return a hash with a new key set to 1 
update_counting_hash(hash_to_change, :oranges)
#    => {:apples=>4, :oranges=>1} 