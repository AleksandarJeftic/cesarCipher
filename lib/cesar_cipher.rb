class CesarCipher
  #class method to avoid unnecessary instantiating
    def self.rotate (str,num)  
      str=str.split("")
      str=str.map do |char|
      	char=(char.ord+num)
        unless (char>97 && char<122) || (char>65 && char<90)
          char-=25
          char.chr
        else
          char.chr
        end
    return str.join
    end  
end