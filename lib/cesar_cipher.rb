class CesarCipher
  #class method to avoid unnecessary instantiating
    def self.rotate (str,num)  
      str=str.split("")
      str=str.map do |char|
        #check for empty space or sign
        if ("a".ord.."z".ord).include?(char.ord) || ("A".ord.."Z".ord).include?(char.ord)
      	  char=(char.ord+num)
          #check if within ranges of up and low case letters
          unless ("a".ord.."z".ord).include?(char) || ("A".ord.."Z".ord).include?(char)
            char-=25
            char.chr
          else
            char.chr
          end
        else
          char
        end
      end
    str.join
    end  
end