class Book
   attr_accessor :title
   def initialize (btitle = nil)
      @title = btitle
   end
  
   def title=(btitle)
      titlewd = btitle.split(" ")
      no_cap = ["and", "a", "the", "of", "in", "an"]
      res = []
      titlewd.each_with_index do |wd, indx|
         if (no_cap.include?(wd) && indx != 0) || 
            (wd =~ /^\d+$/)
            res << wd 
         else
            res << wd.capitalize!
         end
      end
      @title = res.join(" ")
   end
  
end
