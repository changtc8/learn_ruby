def translate(str)
   wd = str.split(" ")
   res = []
   wd.each { |w| res << pig_latin_wd(w.to_s) }
   res.join(" ")
end

def pig_latin_wd(word)
   vowel = ["a","e","i","o","u"]
   wd = word.split("")
   return (word + "ay") if vowel.include?(wd[0])
   return (word.slice!(3..-1) + "schay") if word.start_with?("sch")
   if word.include?("qu") 
      qidx = word.index('qu')
      if qidx <= 1
         idx = qidx + 2
         return (word.slice!(idx..-1) + word[0..idx+1] + "ay")
      end
   end
   vidx = word.index(/[aeiou]/)
   return (word.slice!(vidx..-1) + word[0..vidx-1] + "ay")
end
