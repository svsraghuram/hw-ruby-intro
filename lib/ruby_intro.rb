# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
  if(arr.length == 0)
    return sum
  else
    for i in arr
      sum+=i
    end  
    return sum
  end
end

def max_2_sum(arr)
  if(arr.length==0)
    return 0
  elsif(arr.length==1)
    return arr[0]
  else
    arr= arr.sort.reverse
    return arr[0]+arr[1]
  end
end

def sum_to_n? arr, n
  if(arr.length==0)
    return false
  elsif(arr.length==1)
    return false
  else
    for i in 0..arr.length
      for j in i+1..arr.length-1
        if(arr[i]+arr[j] == n)
          return true
        else
          j=j+1
        end
      end
      i=i+1
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s = s.downcase
  if s.length==0
    return false
  end
  if (s[0] > "a" && s[0] < "z" && !(s[0] == "a" || s[0] == "e" || s[0] == "i" || s[0] == "o" || s[0] == "u"))
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if (s !~ /[^01]/)
    if (s[s.length-1] == "0" && s[s.length-2] == "0")
        return true
    else
        return false
    end
  else
      return false
  end
end

# Part 3

class BookInStock
   attr_reader :isbn, :price
    attr_writer :isbn, :price
    
    def initialize(isbnofbook,priceofbook)
        if(isbnofbook.length == 0 || priceofbook <= 0)
            raise ArgumentError.new 
        end
        @isbn = isbnofbook
        @price= priceofbook
    end
    def price_as_string
        s = "$%0.2f" % [@price]
        return s
    end
end
