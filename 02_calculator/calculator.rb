
def add(n1, n2)
    return n1 + n2
end

def subtract(n1, n2)
    return n1 - n2
end

def sum(num)
   return 0 if num.empty?
   sum = 0
   num.each do |n| 
      sum += n
   end
   sum
end
