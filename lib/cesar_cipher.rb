class CesarCipher
  #class method to avoid unnecessary instantiating
    def self.rotate (str,num)
      #arrays for chara scan
      alphabetLow = ("a".."z").to_a
      alphabetUp = ("A".."Z").to_a
      
      str=str.split("")

      while num >25
      	num -= 26
      end

      str=str.map do |char|
      	if alphabetLow.include?(char)
      	  n=alphabetLow.index(char) + num
      	  while n>25
      	  	n -= 26
      	  end
      	  char=alphabetLow[n]

      	elsif alphabetUp.include?(char)
      	  m=alphabetUp.index(char) + num
      	  while m>25
      	  	m -= 26
      	  end
      	  char=alphabetUp[m]

      	else
      	  char
      	end
      char
      end
    return str.join
    end
    
end