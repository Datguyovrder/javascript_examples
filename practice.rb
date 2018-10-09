#Write a method that prints out every number from 1 to 100.

def print_one_to_hundred
  for x in 1..100
    p x
  end
end 

print_one_to_hundred

#Write a method that prints out every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99).

def every_other
  index=1

  while (index < 100)
    p index
    index += 2
  end
end

puts
every_other

# Write a method that accepts an array of numbers as a parameter, and counts how many 55's there are in the array.

def num_55(collection)
  ctr=0
  for x in 0..collection.length
    if collection[x] == 55
      ctr+=1
    end
  end

  return ctr
end

puts
p num_55([23,45,78,99,55,21,34,55])

# Write a method that accepts an array of strings and returns a new array that has the string "awesomesauce" inserted between every string. 
# For example, if the initial array is ["a", "b", "c", "d", "e"], then the returned array should be ["a", "awesomesauce", "b", "awesomesauce", "c", "awesomesauce", "d", "awesomesauce", "e"].

def insert_awesome_sauce(arr)
  result = []
  index=0
  while (index < arr.length)
    result << arr[index]
    result << "awesomesauce"
    index+=1
  end

  return result
end

puts
p insert_awesome_sauce(["a","b","c","d","e"])

# Start with the hash: item_amounts = {chair: 5, table: 2}
# Someone just bought two chairs. Change the hash such that the chair amount is 3.
# The final result should be: {chair: 3, table: 2}

def change_chair(hash_input)
  hash_input[:chair] = 3
  return hash_input
end

puts
p change_chair({chair: 5, table: 2})

# Start with the hash: item_amounts = {chair: 5, table: 2}
# You received 7 desks to sell. Change the hash to include desks.
# The final result should be: {chair: 5, table: 2, desk: 7}

def add_desk(hash_input2)
  hash_input2[:desk] = 7
  return hash_input2
end

puts
p add_desk({chair: 5, table: 2})

# Write a method that accepts a number and returns its factorial.
# For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.

def factorial(n)
  if n==0
    return 1
  else
    return n * factorial(n-1)
  end
end

puts
p factorial(5)

# Write a method that accepts two arrays of numbers, and prints the sum of every combination of numbers from first and second array. 
# For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should print a list: 101, 501, 1001, 105, 505, 1005, 110, 510, 1010].

def sum_each_elem(arr, arr2)
  for x in 0...arr.length
    for y in 0...arr2.length
      p (arr[x] + arr2[y])    
    end
  end
end

puts
p sum_each_elem([1, 5, 10],[100, 500, 1000])