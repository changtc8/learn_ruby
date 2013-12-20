def echo(wd)
    wd   
end

def shout(wd)
   wd.upcase
end

def repeat(wd, ntime=2)
    res = []
    ntime.times do |i| 
      res << wd
    end
    res.join(" ")
end

def start_of_word(wd, num=1) 
    ch = wd.split("")
    res = ""
    num.times do |i|
        res << ch[i] 
    end
    res
end
      
def first_word(str)
   wd = str.split(" ")
   wd.first
end

def cap(wd)
    fcap = wd.split("").first.upcase  
    new = fcap + wd[1..(wd.length-1)]
end

def titleize(title)
   res = []
   twd = title.split(" ")
   little_words = ["and", "a", "the", "over"]
   twd.each_with_index do |wd, indx|
      if little_words.include?(wd) 
         if indx == 0
            res << cap(wd)
         else 
            res << wd
         end
      else 
         res << cap(wd)
      end
   end
   res.join(" ")
end
